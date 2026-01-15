-- Views for reporting and KPI aggregation.
-- Add canonical SELECTs that power the KPI regions and the report.
-- Keep logic in views to make APEX regions simple and consistent.
------------------------------------------------------------------------------
-- Dynamic KPI Funnel Renderer
--
-- Purpose:
--   Renders a role-based KPI funnel as responsive HTML cards.
--   Designed for Oracle APEX Dynamic Content regions.
--
-- Output:
--   HTML (CLOB)
--
-- Pattern:
--   Server-side KPI aggregation + HTML rendering
------------------------------------------------------------------------------
DECLARE
    v_html         CLOB;
    v_current_role VARCHAR2(50);
    v_role_title   VARCHAR2(100);
BEGIN
    v_html := '<div class="status-grid-4">';

    FOR r IN (
        SELECT
            role_name,
            status_name,
            status_icon,
            cnt,
            SUM(cnt) OVER (PARTITION BY role_name) AS role_total
        FROM (
            ------------------------------------------------------------------
            -- Role 1: Appointment Maker
            ------------------------------------------------------------------
            SELECT
                'Appointment Maker'      AS role_name,
                s.status_name            AS status_name,
                s.status_icon            AS status_icon,
                COUNT(*)                 AS cnt
            FROM customer c
            JOIN lead l
                ON l.lead_id = c.cust_lead_fk
            JOIN status_lov s
                ON s.status_id = l.appointment_status_id
            WHERE c.order_date BETWEEN
                  NVL(TO_DATE(:P_START_DATE,'DD.MM.YYYY'), c.order_date)
              AND NVL(TO_DATE(:P_END_DATE,'DD.MM.YYYY')
                      + INTERVAL '23:59:59' HOUR TO SECOND, c.order_date)
            GROUP BY
                s.status_name,
                s.status_icon

            UNION ALL
            ------------------------------------------------------------------
            -- Role 2: Sales Person
            ------------------------------------------------------------------
            SELECT
                'Sales Person',
                s.status_name,
                s.status_icon,
                COUNT(*)
            FROM customer c
            JOIN lead l
                ON l.lead_id = c.cust_lead_fk
            JOIN status_lov s
                ON s.status_id = l.sales_status_id
            WHERE c.order_date BETWEEN
                  NVL(TO_DATE(:P_START_DATE,'DD.MM.YYYY'), c.order_date)
              AND NVL(TO_DATE(:P_END_DATE,'DD.MM.YYYY')
                      + INTERVAL '23:59:59' HOUR TO SECOND, c.order_date)
            GROUP BY
                s.status_name,
                s.status_icon
        )
        ORDER BY
            CASE role_name
                WHEN 'Appointment Maker' THEN 1
                WHEN 'Sales Person'      THEN 2
            END,
            cnt DESC
    ) LOOP

        ----------------------------------------------------------------------
        -- New role → open new KPI card
        ----------------------------------------------------------------------
        IF v_current_role IS NULL OR v_current_role <> r.role_name THEN

            IF v_current_role IS NOT NULL THEN
                v_html := v_html || '</div>';
            END IF;

            v_role_title :=
                CASE r.role_name
                    WHEN 'Appointment Maker' THEN '1. Appointment Maker'
                    WHEN 'Sales Person'      THEN '2. Sales Person'
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

        ----------------------------------------------------------------------
        -- Status row
        ----------------------------------------------------------------------
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
