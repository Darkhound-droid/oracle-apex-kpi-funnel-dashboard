------------------------------------------------------------------------------
-- Views and helper functions for KPI funnel reporting.
-- Keep APEX region SQL light by centralizing joins and role mapping here.
------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vw_lead_customer_report AS
SELECT
    l.lead_id,
    c.cust_id        AS customer_id,
    c.cust_name,
    c.cust_surname,
    c.order_date,
    appt.status_name AS appointment_status,
    sales.status_name AS sales_status,
    internal.status_name AS internal_status,
    tech.status_name AS tech_status
FROM lead l
LEFT JOIN customer c
    ON c.cust_lead_fk = l.lead_id
LEFT JOIN status_lov appt
    ON appt.status_id = l.appointment_status_id
    AND appt.deleted_yn = 'NO'
LEFT JOIN status_lov sales
    ON sales.status_id = l.sales_status_id
    AND sales.deleted_yn = 'NO'
LEFT JOIN status_lov internal
    ON internal.status_id = c.internal_status_id
    AND internal.deleted_yn = 'NO'
LEFT JOIN status_lov tech
    ON tech.status_id = c.tech_status_id
    AND tech.deleted_yn = 'NO'
WHERE NVL(c.deleted_yn, 'NO') = 'NO';

------------------------------------------------------------------------------
-- Canonical activity view used for KPI aggregation.
------------------------------------------------------------------------------
CREATE OR REPLACE VIEW vw_funnel_activity AS
SELECT
    'Appointment Maker' AS role_name,
    c.order_date,
    s.status_name,
    s.status_icon
FROM customer c
JOIN lead l
    ON l.lead_id = c.cust_lead_fk
JOIN status_lov s
    ON s.status_id = l.appointment_status_id
WHERE s.deleted_yn = 'NO'
  AND NVL(c.deleted_yn, 'NO') = 'NO'

UNION ALL

SELECT
    'Sales Person' AS role_name,
    c.order_date,
    s.status_name,
    s.status_icon
FROM customer c
JOIN lead l
    ON l.lead_id = c.cust_lead_fk
JOIN status_lov s
    ON s.status_id = l.sales_status_id
WHERE s.deleted_yn = 'NO'
  AND NVL(c.deleted_yn, 'NO') = 'NO';

------------------------------------------------------------------------------
-- Dynamic KPI Funnel Renderer
--
-- Purpose:
--   Renders a role-based KPI funnel as responsive HTML cards.
--   Designed for Oracle APEX Dynamic Content regions.
------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION fn_render_kpi_funnel_html
    RETURN CLOB
IS
    v_html         CLOB;
    v_current_role VARCHAR2(50);
    v_role_title   VARCHAR2(100);
    v_start_date   DATE := TO_DATE(apex_util.get_session_state('P_START_DATE'), 'DD.MM.YYYY');
    v_end_date     DATE := TO_DATE(apex_util.get_session_state('P_END_DATE'), 'DD.MM.YYYY');
BEGIN
    v_html := '<div class="status-grid-4">';

    FOR r IN (
        SELECT
            role_name,
            status_name,
            status_icon,
            COUNT(*) AS cnt,
            SUM(COUNT(*)) OVER (PARTITION BY role_name) AS role_total
        FROM vw_funnel_activity
        WHERE order_date >= NVL(v_start_date, order_date)
          AND order_date <= NVL(v_end_date + 1 - (1 / 86400), order_date)
        GROUP BY
            role_name,
            status_name,
            status_icon
        ORDER BY
            CASE role_name
                WHEN 'Appointment Maker' THEN 1
                WHEN 'Sales Person'      THEN 2
                ELSE 3
            END,
            cnt DESC
    ) LOOP
        IF v_current_role IS NULL OR v_current_role <> r.role_name THEN
            IF v_current_role IS NOT NULL THEN
                v_html := v_html || '</div>';
            END IF;

            v_role_title :=
                CASE r.role_name
                    WHEN 'Appointment Maker' THEN '1. Appointment Maker'
                    WHEN 'Sales Person'      THEN '2. Sales Person'
                    ELSE r.role_name
                END;

            v_html :=
                v_html ||
                '<div class="status-box">' ||
                    '<div class="status-title">' ||
                        v_role_title ||
                        ' <span class="status-total">(' ||
                        r.role_total || ')</span>' ||
                    '</div>';

            v_current_role := r.role_name;
        END IF;

        v_html :=
            v_html ||
            '<div class="status-row">' ||
                '<span>' || r.status_icon || ' ' || r.status_name || '</span>' ||
                '<span class="status-count">' || r.cnt || '</span>' ||
            '</div>';
    END LOOP;

    v_html := v_html || '</div></div>';

    RETURN v_html;
END;
/
