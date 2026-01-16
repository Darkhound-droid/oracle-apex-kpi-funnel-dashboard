------------------------------------------------------------------------------
-- Package: kpi_time_intelligence
--
-- Purpose:
--   Centralized timeframe resolution for Oracle APEX dashboards.
--   Supports Day / Week / Month / Quarter / Year selection,
--   automatic timeframe detection for manual date input,
--   and semantic navigation (PREV / NEXT).
------------------------------------------------------------------------------
CREATE OR REPLACE PACKAGE kpi_time_intelligence AS
    PROCEDURE pr_resolve_timeframe_range (
        pi_timeframe_item_name        IN VARCHAR2,
        pi_timeframe_detail_item_name IN VARCHAR2,
        pi_request                    IN VARCHAR2,
        pio_start_date                IN OUT VARCHAR2,
        pio_end_date                  IN OUT VARCHAR2,
        pio_timeframe                 IN OUT VARCHAR2,
        pio_timeframe_detail          IN OUT VARCHAR2
    );
END kpi_time_intelligence;
/

CREATE OR REPLACE PACKAGE BODY kpi_time_intelligence AS
    PROCEDURE pr_resolve_timeframe_range (
        pi_timeframe_item_name        IN VARCHAR2,
        pi_timeframe_detail_item_name IN VARCHAR2,
        pi_request                    IN VARCHAR2,
        pio_start_date                IN OUT VARCHAR2,
        pio_end_date                  IN OUT VARCHAR2,
        pio_timeframe                 IN OUT VARCHAR2,
        pio_timeframe_detail          IN OUT VARCHAR2
    ) IS
        ----------------------------------------------------------------------
        -- Base date context
        ----------------------------------------------------------------------
        v_today      DATE := TRUNC(SYSDATE);
        v_year       NUMBER := TO_NUMBER(TO_CHAR(v_today,'YYYY'));
        v_quarter    NUMBER := TO_NUMBER(TO_CHAR(v_today,'Q'));
        v_month      NUMBER := TO_NUMBER(TO_CHAR(v_today,'MM'));
        v_week       NUMBER := TO_NUMBER(TO_CHAR(v_today,'IW')); -- ISO week
        v_weekday    NUMBER := (v_today - TRUNC(v_today,'IW')) + 1;

        v_timeframe  VARCHAR2(20);
        v_detail     VARCHAR2(50);

        v_base_date  DATE;
        v_dyear      NUMBER;
    BEGIN
        ----------------------------------------------------------------------
        -- Load current session state
        ----------------------------------------------------------------------
        v_timeframe := apex_util.get_session_state(pi_timeframe_item_name);
        v_detail    := apex_util.get_session_state(pi_timeframe_detail_item_name);

        ----------------------------------------------------------------------
        -- MANUAL SEARCH (AUTO-DETECT MODE)
        ----------------------------------------------------------------------
        IF pi_request LIKE '%CUSTOM_SEARCH%' THEN
            DECLARE
                v_start DATE := TO_DATE(pio_start_date,'DD.MM.YYYY');
                v_end   DATE := TO_DATE(pio_end_date,'DD.MM.YYYY');
                v_diff  NUMBER := v_end - v_start;
            BEGIN
                IF v_diff = 0 THEN
                    pio_timeframe        := 'D';
                    pio_timeframe_detail := TO_CHAR(v_start,'D');
                ELSIF v_diff <= 7 THEN
                    pio_timeframe        := 'W';
                    pio_timeframe_detail := TO_CHAR(v_start,'YYYY') || '-' || TO_CHAR(v_start,'IW');
                ELSIF v_diff <= 31 THEN
                    pio_timeframe        := 'M';
                    pio_timeframe_detail := TO_CHAR(v_start,'MM');
                ELSIF v_diff <= 92 THEN
                    pio_timeframe        := 'Q';
                    pio_timeframe_detail := TO_CHAR(v_start,'YYYY') || '-' || TO_CHAR(v_start,'Q');
                ELSE
                    pio_timeframe        := 'Y';
                    pio_timeframe_detail := TO_CHAR(v_start,'YYYY');
                END IF;

                apex_util.set_session_state(pi_timeframe_item_name,        pio_timeframe);
                apex_util.set_session_state(pi_timeframe_detail_item_name, pio_timeframe_detail);
            END;

            RETURN;
        END IF;

        ----------------------------------------------------------------------
        -- MAIN TIMEFRAME SELECTED
        ----------------------------------------------------------------------
        IF pi_request = pi_timeframe_item_name THEN
            CASE v_timeframe
                WHEN 'D' THEN
                    pio_start_date := TO_CHAR(v_today,'DD.MM.YYYY');
                    pio_end_date   := pio_start_date;
                    pio_timeframe_detail := v_weekday;
                WHEN 'W' THEN
                    pio_start_date := TO_CHAR(TRUNC(v_today,'IW'),'DD.MM.YYYY');
                    pio_end_date   := TO_CHAR(v_today,'DD.MM.YYYY');
                    pio_timeframe_detail := v_year || '-' || LPAD(v_week,2,'0');
                WHEN 'M' THEN
                    pio_start_date := TO_CHAR(TRUNC(v_today,'MM'),'DD.MM.YYYY');
                    pio_end_date   := TO_CHAR(LAST_DAY(v_today),'DD.MM.YYYY');
                    pio_timeframe_detail := LPAD(v_month,2,'0');
                WHEN 'Q' THEN
                    CASE v_quarter
                        WHEN 1 THEN pio_start_date := '01.01.'||v_year; pio_end_date := '31.03.'||v_year;
                        WHEN 2 THEN pio_start_date := '01.04.'||v_year; pio_end_date := '30.06.'||v_year;
                        WHEN 3 THEN pio_start_date := '01.07.'||v_year; pio_end_date := '30.09.'||v_year;
                        WHEN 4 THEN pio_start_date := '01.10.'||v_year; pio_end_date := '31.12.'||v_year;
                    END CASE;
                    pio_timeframe_detail := v_year||'-'||v_quarter;
                WHEN 'Y' THEN
                    pio_start_date := '01.01.'||v_year;
                    pio_end_date   := '31.12.'||v_year;
                    pio_timeframe_detail := v_year;
            END CASE;

            apex_util.set_session_state(pi_timeframe_detail_item_name, pio_timeframe_detail);
            RETURN;
        END IF;

        ----------------------------------------------------------------------
        -- DETAIL NAVIGATION (PREV / NEXT)
        ----------------------------------------------------------------------
        IF pi_request = pi_timeframe_detail_item_name THEN
            v_base_date := TO_DATE(pio_start_date,'DD.MM.YYYY');

            CASE v_timeframe
                WHEN 'M' THEN
                    IF v_detail = 'PREV_MONTH' THEN
                        v_base_date := ADD_MONTHS(v_base_date,-1);
                    ELSIF v_detail = 'NEXT_MONTH' THEN
                        v_base_date := ADD_MONTHS(v_base_date, 1);
                    END IF;

                    pio_start_date := TO_CHAR(TRUNC(v_base_date,'MM'),'DD.MM.YYYY');
                    pio_end_date   := TO_CHAR(LAST_DAY(v_base_date),'DD.MM.YYYY');
                    pio_timeframe_detail := TO_CHAR(v_base_date,'MM');
                WHEN 'Y' THEN
                    IF v_detail = 'PREV_YEAR' THEN
                        v_dyear := TO_NUMBER(TO_CHAR(v_base_date,'YYYY')) - 1;
                    ELSIF v_detail = 'NEXT_YEAR' THEN
                        v_dyear := TO_NUMBER(TO_CHAR(v_base_date,'YYYY')) + 1;
                    ELSE
                        v_dyear := TO_NUMBER(v_detail);
                    END IF;

                    pio_start_date := '01.01.'||v_dyear;
                    pio_end_date   := '31.12.'||v_dyear;
                    pio_timeframe_detail := v_dyear;
            END CASE;

            RETURN;
        END IF;
    END pr_resolve_timeframe_range;
END kpi_time_intelligence;
/
