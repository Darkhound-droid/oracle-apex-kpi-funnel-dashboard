prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.0'
,p_default_workspace_id=>1399242726498539
,p_default_application_id=>1000
,p_default_id_offset=>0
,p_default_owner=>'SENIOCON_DEV'
);
end;
/
 
prompt APPLICATION 1000 - 01. Admin-App 🔐
--
-- Application Export:
--   Application:     1000
--   Name:            01. Admin-App 🔐
--   Date and Time:   11:02 Thursday January 15, 2026
--   Exported By:     WIZARD
--   Flashback:       1
--   Export Type:     Page Export
--   Manifest
--     PAGE: 1410
--   Manifest End
--   Version:         23.2.0
--   Instance ID:     709495006369311
--

begin
null;
end;
/
prompt --application/pages/delete_01410
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>1410);
end;
/
prompt --application/pages/page_01410
begin
wwv_flow_imp_page.create_page(
 p_id=>1410
,p_name=>'Customer created'
,p_alias=>'CUSTOMER-CREATED'
,p_step_title=>'Customer created'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* =========================================================',
'   Grid',
'   ========================================================= */',
'.status-grid-4 {',
'    display: grid;',
'    grid-template-columns: repeat(4, 1fr);',
'    gap: 16px;',
'}',
'',
'/* =========================================================',
'   Card',
'   ========================================================= */',
'.status-box {',
'    position: relative;',
'    background: linear-gradient(180deg, #ffffff 0%, #fafafa 100%);',
'    border-radius: 16px;',
'    padding: 14px 16px 16px;',
'    font-size: 13px;',
'',
'    box-shadow:',
'        0 6px 18px rgba(0,0,0,0.06),',
'        inset 0 1px 0 rgba(255,255,255,0.6);',
'',
'    transition:',
'        transform 0.25s ease,',
'        box-shadow 0.25s ease;',
'}',
'',
'/* subtle hover lift */',
'.status-box:hover {',
'    transform: translateY(-3px);',
'    box-shadow:',
'        0 10px 26px rgba(0,0,0,0.08),',
'        inset 0 1px 0 rgba(255,255,255,0.7);',
'}',
'',
'/* =========================================================',
'   Accent Line (Brand)',
'   ========================================================= */',
'.status-box::before {',
'    content: "";',
'    position: absolute;',
'    top: 0;',
'    left: 0;',
'    height: 4px;',
'    width: 100%;',
'    border-radius: 16px 16px 0 0;',
'    background: linear-gradient(',
'        90deg,',
'        #23384f,',
'        #629eb3',
'    );',
'}',
'',
'/* =========================================================',
'   Title',
'   ========================================================= */',
'.status-title {',
'    display: flex;',
'    align-items: baseline;',
'    justify-content: space-between;',
'',
'    font-weight: 600;',
'    font-size: 13px;',
'    color: #2a2a2a;',
'    margin-bottom: 10px;',
'}',
'',
'/* Total count */',
'.status-total {',
'',
'',
'    font-size: 12px; ',
'    font-weight: 600;',
'    color: #ffffff;',
'    background: #21354c;',
'    padding: 2px 8px;',
'    border-radius: 999px;',
'}',
'',
'/* =========================================================',
'   Rows',
'   ========================================================= */',
'.status-row {',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'',
'    padding: 6px 0;',
'    border-bottom: 1px dashed rgba(0,0,0,0.08);',
'}',
'',
'.status-row:last-child {',
'    border-bottom: none;',
'}',
'',
'/* Left text */',
'.status-row span:first-child {',
'    display: flex;',
'    align-items: center;',
'    gap: 6px;',
'    color: #444;',
'}',
'',
'/* Right count badge */',
'.status-count {',
'    font-weight: 600;',
'    color: #ffffff;',
'',
'    background: #5e97ac;',
'    padding: 2px 8px;',
'    border-radius: 999px;',
'}',
'',
'/* =========================================================',
'   Responsive polish',
'   ========================================================= */',
'@media (max-width: 1200px) {',
'    .status-grid-4 {',
'        grid-template-columns: repeat(2, 1fr);',
'    }',
'}',
'',
'@media (max-width: 640px) {',
'    .status-grid-4 {',
'        grid-template-columns: 1fr;',
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'24'
,p_last_updated_by=>'WIZARD'
,p_last_upd_yyyymmddhh24miss=>'20260115103233'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(657752589501078581)
,p_plug_name=>'Container'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>10
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(650545221573817838)
,p_plug_name=>unistr('Customer to Lead Conversion \2013 Information & Interpretation | <span class=" custom_global_badge_css  u-color-39-bg">Date-Filter on customer</span>')
,p_parent_plug_id=>wwv_flow_imp.id(657752589501078581)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(650545344778817839)
,p_plug_name=>'Filter'
,p_parent_plug_id=>wwv_flow_imp.id(650545221573817838)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(650545759148817844)
,p_plug_name=>'Timeframe Filter'
,p_parent_plug_id=>wwv_flow_imp.id(650545344778817839)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(657749059172078546)
,p_plug_name=>'Total sum overview'
,p_parent_plug_id=>wwv_flow_imp.id(650545221573817838)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(127152995002681424)
,p_plug_name=>'summry'
,p_parent_plug_id=>wwv_flow_imp.id(657749059172078546)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_return       CLOB;',
'    v_current_role VARCHAR2(50);',
'    v_role_title   VARCHAR2(100);',
'BEGIN',
'    v_return := ''<div class="status-grid-4">'';',
'',
'    FOR r IN (',
'        SELECT',
'            role_name',
'          , status_name',
'          , status_icon',
'          , cnt',
'          , SUM(cnt) OVER (PARTITION BY role_name) AS role_total',
'        FROM (',
'            --------------------------------------------------------------',
'            -- Appointment Maker',
'            --------------------------------------------------------------',
'            SELECT',
'                ''Appointment Maker''          AS role_name',
'              , ls.LOEN_NAME                  AS status_name',
'              , ls.LOEN_ICON                  AS status_icon',
'              , COUNT(*)                      AS cnt',
'            FROM CUSTOMER c',
'            JOIN LEAD l',
'                ON c.CUST_LEAD_FK = l.LEAD_ID',
'            JOIN LOV_ENTRIES ls',
'                ON ls.LOEN_ID = l.LEAD_APPIONTMENT_MAKER_STATUS',
'               AND ls.LOEN_DELETED_YN = ''NO''',
'            WHERE c.CUST_COMP_FK = (',
'                      SELECT COMP_ID',
'                        FROM COMPANY',
'                       WHERE COMP_NAME = ''Seniocon GmbH''',
'                  )',
'              AND c.CUST_ORDER_DATE BETWEEN',
'                  NVL(TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY''), c.CUST_ORDER_DATE)',
'              AND NVL(',
'                      TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                      + INTERVAL ''23:59:59'' HOUR TO SECOND,',
'                      c.CUST_ORDER_DATE',
'                  )',
'              AND CUST_DELETED_YN = ''NO''',
'            GROUP BY',
'                ls.LOEN_NAME',
'              , ls.LOEN_ICON',
'',
'            UNION ALL',
'            --------------------------------------------------------------',
'            -- Sales Person',
'            --------------------------------------------------------------',
'            SELECT',
'                ''Sales Person''',
'              , ss.LOEN_NAME',
'              , ss.LOEN_ICON',
'              , COUNT(*)',
'            FROM CUSTOMER c',
'            JOIN LEAD l',
'                ON c.CUST_LEAD_FK = l.LEAD_ID',
'            JOIN LOV_ENTRIES ss',
'                ON ss.LOEN_ID = l.LEAD_SALES_PERSON_STATUS',
'               AND ss.LOEN_DELETED_YN = ''NO''',
'            WHERE c.CUST_COMP_FK = (',
'                      SELECT COMP_ID',
'                        FROM COMPANY',
'                       WHERE COMP_NAME = ''Seniocon GmbH''',
'                  )',
'              AND c.CUST_ORDER_DATE BETWEEN',
'                  NVL(TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY''), c.CUST_ORDER_DATE)',
'              AND NVL(',
'                      TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                      + INTERVAL ''23:59:59'' HOUR TO SECOND,',
'                      c.CUST_ORDER_DATE',
'                  )',
'              AND CUST_DELETED_YN = ''NO''',
'            GROUP BY',
'                ss.LOEN_NAME',
'              , ss.LOEN_ICON',
'',
'            UNION ALL',
'            --------------------------------------------------------------',
'            -- Internal Employee',
'            --------------------------------------------------------------',
'            SELECT',
'                ''Internal Employee''',
'              , cs.LOEN_NAME',
'              , cs.LOEN_ICON',
'              , COUNT(*)',
'            FROM CUSTOMER c',
'            JOIN LOV_ENTRIES cs',
'                ON cs.LOEN_ID = c.CUST_STATUS_FK',
'               AND cs.LOEN_DELETED_YN = ''NO''',
'            WHERE c.CUST_COMP_FK = (',
'                      SELECT COMP_ID',
'                        FROM COMPANY',
'                       WHERE COMP_NAME = ''Seniocon GmbH''',
'                  )',
'              AND c.CUST_ORDER_DATE BETWEEN',
'                  NVL(TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY''), c.CUST_ORDER_DATE)',
'              AND NVL(',
'                      TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                      + INTERVAL ''23:59:59'' HOUR TO SECOND,',
'                      c.CUST_ORDER_DATE',
'                  )',
'              AND CUST_DELETED_YN = ''NO''',
'            GROUP BY',
'                cs.LOEN_NAME',
'              , cs.LOEN_ICON',
'',
'            UNION ALL',
'            --------------------------------------------------------------',
'            -- Technical Employee',
'            --------------------------------------------------------------',
'            SELECT',
'                ''Technical Employee''',
'              , ts.LOEN_NAME',
'              , ts.LOEN_ICON',
'              , COUNT(*)',
'            FROM CUSTOMER c',
'            JOIN LOV_ENTRIES ts',
'                ON ts.LOEN_ID = c.CUST_INTERNAL_USER_STATUS_FK',
'               AND ts.LOEN_DELETED_YN = ''NO''',
'            WHERE c.CUST_COMP_FK = (',
'                      SELECT COMP_ID',
'                        FROM COMPANY',
'                       WHERE COMP_NAME = ''Seniocon GmbH''',
'                  )',
'              AND c.CUST_ORDER_DATE BETWEEN',
'                  NVL(TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY''), c.CUST_ORDER_DATE)',
'              AND NVL(',
'                      TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                      + INTERVAL ''23:59:59'' HOUR TO SECOND,',
'                      c.CUST_ORDER_DATE',
'                  )',
'              AND CUST_DELETED_YN = ''NO''',
'            GROUP BY',
'                ts.LOEN_NAME',
'              , ts.LOEN_ICON',
'        )',
'        ORDER BY',
'            CASE role_name',
'                WHEN ''Appointment Maker'' THEN 1',
'                WHEN ''Sales Person''      THEN 2',
'                WHEN ''Internal Employee'' THEN 3',
'                WHEN ''Technical Employee''THEN 4',
'            END',
'          , cnt DESC',
'    )',
'    LOOP',
'        -- Titel inkl. Nummerierung',
'        IF v_current_role IS NULL OR v_current_role <> r.role_name THEN',
'            IF v_current_role IS NOT NULL THEN',
'                v_return := v_return || ''</div>'';',
'            END IF;',
'',
'            v_role_title :=',
'                CASE r.role_name',
'                    WHEN ''Appointment Maker'' THEN ''1. Appointment Maker''',
'                    WHEN ''Sales Person''      THEN ''2. Sales Person''',
'                    WHEN ''Internal Employee'' THEN ''3. Internal Employee''',
'                    WHEN ''Technical Employee''THEN ''4. Technical Employee''',
'                END;',
'',
'            v_return := v_return ||',
'                ''<div class="status-box">'' ||',
'                    ''<div class="status-title">'' ||',
'                        v_role_title || '' <span class="status-total">('' ||',
'                        r.role_total || '')</span>'' ||',
'                    ''</div>'';',
'',
'            v_current_role := r.role_name;',
'        END IF;',
'',
'        v_return := v_return ||',
'            ''<div class="status-row">'' ||',
'                ''<span>'' || r.status_icon || '' '' || r.status_name || ''</span>'' ||',
'                ''<span class="status-count">'' || r.cnt || ''</span>'' ||',
'            ''</div>'';',
'    END LOOP;',
'',
'    v_return := v_return || ''</div></div>'';',
'',
'    RETURN v_return;',
'END;',
''))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_DYNAMIC_CONTENT'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(260347811635963702)
,p_plug_name=>'smart filter'
,p_parent_plug_id=>wwv_flow_imp.id(657749059172078546)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'NATIVE_SMART_FILTERS'
,p_filtered_region_id=>wwv_flow_imp.id(653638625876109167)
,p_attribute_02=>'N'
,p_attribute_03=>'10000'
,p_attribute_04=>'N'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(653638625876109167)
,p_name=>'customer created'
,p_parent_plug_id=>wwv_flow_imp.id(657749059172078546)
,p_template=>wwv_flow_imp.id(128466642473036948)
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    NULL                                                 AS ACTION',
'  , CUST_NAME || '' '' || CUST_SURNAME                     AS CUSTOMER',
'  , ''Lead-'' || LEAD_ID                                   AS LEAD',
'  , CUST_ORDER_DATE                                      AS CUST_ORDER_DATE',
'',
'  ---------------------------------------------------------',
'  -- Lead Address',
'  ---------------------------------------------------------',
'  , LEAD_ADDRESS',
'        || '' ''',
'        || LEAD_HOUSE_NR',
'        || '', ''',
'        || LEAD_POST_CODE',
'        || '' ''',
'        || LEAD_CITY                                     AS LEAD_ADDRESS_FULL',
'',
'  ---------------------------------------------------------',
'  -- Customer Address',
'  ---------------------------------------------------------',
'  , CUST_STREET',
'        || '' ''',
'        || CUST_NR',
'        || '', ''',
'        || CUST_POSTCODE',
'        || '' ''',
'        || CUST_CITY                                     AS CUSTOMER_ADDRESS_FULL',
'',
'  ---------------------------------------------------------',
'  -- Lead Status (Appointment Maker)',
'  ---------------------------------------------------------',
'  , LS.LOEN_ICON || '' '' || LS.LOEN_NAME                  AS LEAD_STATUS',
'',
'  ---------------------------------------------------------',
'  -- Sales Status',
'  ---------------------------------------------------------',
'  , SS.LOEN_ICON || '' '' || SS.LOEN_NAME                  AS SALES_STATUS',
'',
'  ---------------------------------------------------------',
'  -- Customer Status (Internal / Administration)',
'  ---------------------------------------------------------',
'  , CS.LOEN_ICON || '' '' || CS.LOEN_NAME                  AS CUSTOMER_STATUS',
'',
'  ---------------------------------------------------------',
'  -- Customer Technical / Internal User Status',
'  ---------------------------------------------------------',
'  , CTS.LOEN_ICON || '' '' || CTS.LOEN_NAME                AS CUSTOMER_TECH_STATUS',
'',
'  ---------------------------------------------------------',
'  -- Price (aggregated per Lead)',
'  ---------------------------------------------------------',
'  , NVL(LC.PRICE, 0)                                     AS PRICE',
'  , LEAD_ID',
'  , CUST_ID',
'',
'FROM CUSTOMER',
'JOIN LEAD',
'    ON CUST_LEAD_FK = LEAD_ID',
'',
'---------------------------------------------------------',
'-- Lead Status LOV',
'---------------------------------------------------------',
'LEFT JOIN LOV_ENTRIES LS',
'    ON LS.LOEN_ID = LEAD_APPIONTMENT_MAKER_STATUS',
'   AND LS.LOEN_DELETED_YN = ''NO''',
'',
'---------------------------------------------------------',
'-- Sales Status LOV',
'---------------------------------------------------------',
'LEFT JOIN LOV_ENTRIES SS',
'    ON SS.LOEN_ID = LEAD_SALES_PERSON_STATUS',
'   AND SS.LOEN_DELETED_YN = ''NO''',
'',
'---------------------------------------------------------',
'-- Customer Internal Status LOV',
'---------------------------------------------------------',
'LEFT JOIN LOV_ENTRIES CS',
'    ON CS.LOEN_ID = CUST_STATUS_FK',
'   AND CS.LOEN_DELETED_YN = ''NO''',
'',
'---------------------------------------------------------',
'-- Customer Technical / Internal User Status LOV',
'---------------------------------------------------------',
'LEFT JOIN LOV_ENTRIES CTS',
'    ON CTS.LOEN_ID = CUST_INTERNAL_USER_STATUS_FK',
'   AND CTS.LOEN_DELETED_YN = ''NO''',
'',
'---------------------------------------------------------',
unistr('-- \D83D\DD11 Aggregated Lead Configuration (THIS is the fix)'),
'---------------------------------------------------------',
'LEFT JOIN (',
'    SELECT',
'        LECO_LEAD_FK',
'      , SUM(LECO_CUSTOM_PRICE) AS PRICE',
'    FROM LEAD_CONFIGURATION',
'    WHERE LECO_DELETED_YN = ''FIXED''',
'    GROUP BY',
'        LECO_LEAD_FK',
') LC',
'    ON LC.LECO_LEAD_FK = LEAD_ID',
'',
'WHERE CUST_COMP_FK = (',
'          SELECT COMP_ID',
'            FROM COMPANY',
'           WHERE COMP_NAME = ''Seniocon GmbH''',
'      )',
'',
'---------------------------------------------------------',
'-- Date Filter (unchanged)',
'---------------------------------------------------------',
'AND (',
'        (:P1410_START_DATE IS NULL AND :P1410_END_DATE IS NULL)',
'',
'     OR (',
'            :P1410_START_DATE IS NOT NULL',
'        AND :P1410_END_DATE   IS NULL',
'        AND CUST_ORDER_DATE  >= TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'        )',
'',
'     OR (',
'            :P1410_START_DATE IS NULL',
'        AND :P1410_END_DATE   IS NOT NULL',
'        AND CUST_ORDER_DATE  <= TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                                  + INTERVAL ''23:59:59'' HOUR TO SECOND',
'        )',
'',
'     OR (',
'            :P1410_START_DATE IS NOT NULL',
'        AND :P1410_END_DATE   IS NOT NULL',
'        AND CUST_ORDER_DATE BETWEEN',
'                TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'            AND TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                + INTERVAL ''23:59:59'' HOUR TO SECOND',
'        )',
'    )',
'        AND  CUST_DELETED_YN = ''NO''',
'ORDER BY',
'    CUST_ORDER_DATE ASC;',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>true
,p_query_row_template=>wwv_flow_imp.id(128502246271036958)
,p_query_num_rows=>350
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'TOP_AND_BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146820211016498122)
,p_query_column_id=>1
,p_column_alias=>'ACTION'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:1411:&SESSION.::&DEBUG.:1411:P1411_CUST_ID,P1411_LEAD_ID:#CUST_ID#,#LEAD_ID#'
,p_column_linktext=>'<div class="t-Button t-Button--noLabel t-Button--icon t-Button--primary t-Button--simple">     <span aria-hidden="true" class="t-Icon fa fa-edit"> </span> </div>'
,p_column_alignment=>'CENTER'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(260114523752022746)
,p_query_column_id=>2
,p_column_alias=>'CUSTOMER'
,p_column_display_sequence=>40
,p_column_heading=>'Customer'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(260114701872022747)
,p_query_column_id=>3
,p_column_alias=>'LEAD'
,p_column_display_sequence=>30
,p_column_heading=>'Lead'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_report_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(127153119170681426)
,p_query_column_id=>4
,p_column_alias=>'CUST_ORDER_DATE'
,p_column_display_sequence=>20
,p_column_heading=>'Order Date'
,p_use_as_row_header=>'N'
,p_column_format=>'DD.MM.YYYY'
,p_column_alignment=>'CENTER'
,p_report_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(127153297780681427)
,p_query_column_id=>5
,p_column_alias=>'LEAD_ADDRESS_FULL'
,p_column_display_sequence=>50
,p_column_heading=>'Lead Address'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(127153347495681428)
,p_query_column_id=>6
,p_column_alias=>'CUSTOMER_ADDRESS_FULL'
,p_column_display_sequence=>60
,p_column_heading=>'Customer Address'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(260347434987963698)
,p_query_column_id=>7
,p_column_alias=>'LEAD_STATUS'
,p_column_display_sequence=>70
,p_column_heading=>'1. Appointment maker'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_report_column_width=>160
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(260347547412963699)
,p_query_column_id=>8
,p_column_alias=>'SALES_STATUS'
,p_column_display_sequence=>80
,p_column_heading=>'2. Sales person'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_report_column_width=>120
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(260347677704963700)
,p_query_column_id=>9
,p_column_alias=>'CUSTOMER_STATUS'
,p_column_display_sequence=>90
,p_column_heading=>'3. Internal employee'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_report_column_width=>150
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(260347712279963701)
,p_query_column_id=>10
,p_column_alias=>'CUSTOMER_TECH_STATUS'
,p_column_display_sequence=>100
,p_column_heading=>'4. Technical employee'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_report_column_width=>150
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(127154082552681435)
,p_query_column_id=>11
,p_column_alias=>'PRICE'
,p_column_display_sequence=>110
,p_column_heading=>'Price'
,p_use_as_row_header=>'N'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_sum_column=>'Y'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146820022728498120)
,p_query_column_id=>12
,p_column_alias=>'LEAD_ID'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(146820106379498121)
,p_query_column_id=>13
,p_column_alias=>'CUST_ID'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(657751785153078573)
,p_plug_name=>'inline popup'
,p_parent_plug_id=>wwv_flow_imp.id(657752589501078581)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(657751947853078574)
,p_plug_name=>'information'
,p_parent_plug_id=>wwv_flow_imp.id(657751785153078573)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(128451435509036945)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-family: Arial; font-size:14px; color:#333; line-height:1.7;">',
'',
'    <h3 style="margin-bottom:10px;">',
unistr('        \D83D\DD04 Overview: Purpose and Logic of the Lead to Customer Conversion Dashboard'),
'    </h3>',
'',
'    <p>',
'        This dashboard provides a structured end-to-end view of the',
'        <strong>lead-to-customer conversion process</strong> within the selected time period.',
'        It tracks how leads evolve from initial creation through qualification,',
'        appointment handling, and finally into confirmed customers.',
'    </p>',
'',
'    <p>',
'        All metrics are calculated on a <strong>grouped lead-source level</strong>,',
'        allowing you to compare performance, quality, and conversion efficiency',
'        across different lead source groups.',
'    </p>',
'',
unistr('    <h4 style="margin-top:20px;">\D83C\DFAF What This Dashboard Enables</h4>'),
'',
'    <ul style="margin-left:15px;">',
'        <li>',
'            <strong>Lead volume transparency:</strong>',
'            Understand how many leads were generated per lead source group.',
'        </li>',
'        <li>',
'            <strong>Quality filtering:</strong>',
'            Identify how many leads were removed due to cancellation (Storno)',
'            and how many remain as valid net leads.',
'        </li>',
'        <li>',
'            <strong>Appointment effectiveness:</strong>',
'            Measure how many valid leads resulted in a consultation appointment',
'            (Beratungstermin).',
'        </li>',
'        <li>',
'            <strong>Customer conversion:</strong>',
'            Track how many leads ultimately became real customers.',
'        </li>',
'        <li>',
'            <strong>Status transparency:</strong>',
'            Review lead and sales status distributions to understand process bottlenecks.',
'        </li>',
'    </ul>',
'',
unistr('    <h4 style="margin-top:20px;">\D83D\DDC2\FE0F Available Time & Scope Filters</h4>'),
'',
'    <ul style="margin-left:15px;">',
unistr('        <li><strong>\D83D\DCC5 Date range:</strong> Custom start and end dates for precise analysis.</li>'),
unistr('        <li><strong>\D83D\DDD3\FE0F Day / Week / Month / Quarter / Year:</strong> Time-based aggregation levels.</li>'),
unistr('        <li><strong>\D83D\DD0D Search:</strong> Apply the selected filters and refresh all metrics.</li>'),
'    </ul>',
'',
unistr('    <h4 style="margin-top:20px;">\26A0\FE0F Important Interpretation Notes</h4>'),
'',
'    <p>',
'        Percentages are calculated based on clearly defined reference values',
'        (e.g. total leads, net leads, or appointment leads).',
'        This ensures consistent comparability across all lead source groups.',
'    </p>',
'',
'    <p>',
'        Deleted leads and canceled leads (Storno) are explicitly separated to',
'        avoid inflating conversion metrics.',
'        The dashboard therefore reflects <strong>realistic and actionable performance indicators</strong>.',
'    </p>',
'',
'</div>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(657752529012078580)
,p_plug_name=>'metric information'
,p_parent_plug_id=>wwv_flow_imp.id(657751785153078573)
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(128451435509036945)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="font-size:13px; color:#444; line-height:1.7; padding:5px 2px;">',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\D83D\DCE5</span>'),
'        <span>',
'            <strong>Total Leads:</strong>',
'            Total number of leads generated within the selected time period.',
'        </span>',
'    </p>',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\D83E\DDEE</span>'),
'        <span>',
'            <strong>Lead Net:</strong>',
'            Number of valid leads after excluding canceled (Storno) leads.',
'        </span>',
'    </p>',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\274C</span>'),
'        <span>',
'            <strong>Storno Leads:</strong>',
'            Leads that were explicitly canceled and removed from the active pipeline.',
'        </span>',
'    </p>',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\D83D\DCC5</span>'),
'        <span>',
'            <strong>Beratungstermin Leads:</strong>',
'            Net leads that resulted in a confirmed consultation appointment.',
'        </span>',
'    </p>',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\D83D\DC64</span>'),
'        <span>',
'            <strong>Customers:</strong>',
'            Number of actual customers created from leads in the selected period.',
'        </span>',
'    </p>',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\D83D\DCCA</span>'),
'        <span>',
'            <strong>Percentage Columns (%):</strong>',
'            All percentage values indicate the ratio relative to their logical base',
'            (e.g. Net Leads, Appointment Leads), enabling direct performance comparison.',
'        </span>',
'    </p>',
'',
'    <p style="display:flex; align-items:center; gap:10px; margin:6px 0;">',
unistr('        <span style="font-size:20px;">\D83D\DCCC</span>'),
'        <span>',
'            <strong>Lead & Sales Status Summary:</strong>',
'            Aggregated status distribution providing insight into lead progression',
'            and sales engagement stages.',
'        </span>',
'    </p>',
'',
'</div>',
''))
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(657752796132078583)
,p_plug_name=>'hidden items'
,p_parent_plug_id=>wwv_flow_imp.id(657752589501078581)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(128466642473036948)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
end;
/
begin
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(260338163026987848)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(650545759148817844)
,p_button_name=>'P1410_CUSTOM_SEARCH'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--success:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--stretch:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(128539966023036971)
,p_button_image_alt=>'Search'
,p_button_css_classes=>'btn_save_scroll_pos'
,p_icon_css_classes=>'fa-search'
,p_grid_new_row=>'N'
,p_grid_column=>11
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(260328700799987854)
,p_button_sequence=>10
,p_button_name=>'P1410_BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--mobileHideLabel:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(128539966023036971)
,p_button_image_alt=>'Back'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:1000::'
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(260332996150987851)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(650545221573817838)
,p_button_name=>'P1410_INFORMATION'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(128539966023036971)
,p_button_image_alt=>'How to read this dashboard?'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-info-circle-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(260332563698987851)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(650545221573817838)
,p_button_name=>'P1410_METRICS_INFO'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft:t-Button--hoverIconPush:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(128539966023036971)
,p_button_image_alt=>'What do these metrics mean?'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-info-circle-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127153022264681425)
,p_name=>'P1410_LEAD_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(260347811635963702)
,p_prompt=>'1. Appointment maker'
,p_source=>'LEAD_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    le.LOEN_ICON || '' '' || le.LOEN_NAME   AS DISPLAY_VALUE',
'  , le.LOEN_ICON || '' '' || le.LOEN_NAME   AS RETURN_VALUE',
'FROM LOV_ENTRIES le',
'WHERE le.LOEN_DELETED_YN = ''NO''',
'  AND le.LOEN_ID IN (',
'        SELECT l.LEAD_APPIONTMENT_MAKER_STATUS',
'        FROM CUSTOMER c',
'        JOIN LEAD l',
'            ON c.CUST_LEAD_FK = l.LEAD_ID',
'        WHERE c.CUST_COMP_FK = (',
'                  SELECT COMP_ID',
'                    FROM COMPANY',
'                   WHERE COMP_NAME = ''Seniocon GmbH''',
'              )',
'          AND l.LEAD_APPIONTMENT_MAKER_STATUS IS NOT NULL',
'',
'          ------------------------------------------------------------------',
'          -- Date Filter (identisch zum Report)',
'          ------------------------------------------------------------------',
'          AND (',
'                (:P1410_START_DATE IS NULL AND :P1410_END_DATE IS NULL)',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NULL',
'                AND c.CUST_ORDER_DATE >= TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE <= TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                                          + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE BETWEEN',
'                        TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                    AND TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                        + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'          )',
'  ) ;',
''))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_multi_value_trim_space=>false
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127153522656681430)
,p_name=>'P1410_SALES_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(260347811635963702)
,p_prompt=>'2. Sales person'
,p_source=>'SALES_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    le.LOEN_ICON || '' '' || le.LOEN_NAME   AS DISPLAY_VALUE',
'  , le.LOEN_ICON || '' '' || le.LOEN_NAME   AS RETURN_VALUE',
'FROM LOV_ENTRIES le',
'WHERE le.LOEN_DELETED_YN = ''NO''',
'  AND le.LOEN_ID IN (',
'        SELECT l.LEAD_SALES_PERSON_STATUS',
'        FROM CUSTOMER c',
'        JOIN LEAD l',
'            ON c.CUST_LEAD_FK = l.LEAD_ID',
'        WHERE c.CUST_COMP_FK = (',
'                  SELECT COMP_ID',
'                    FROM COMPANY',
'                   WHERE COMP_NAME = ''Seniocon GmbH''',
'              )',
'          AND l.LEAD_SALES_PERSON_STATUS IS NOT NULL',
'',
'          ------------------------------------------------------------------',
'          -- Date Filter (identisch zum Report)',
'          ------------------------------------------------------------------',
'          AND (',
'                (:P1410_START_DATE IS NULL AND :P1410_END_DATE IS NULL)',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NULL',
'                AND c.CUST_ORDER_DATE >= TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE <= TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                                          + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE BETWEEN',
'                        TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                    AND TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                        + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'          )',
'  );',
''))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_multi_value_trim_space=>false
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127153628673681431)
,p_name=>'P1410_CUSTOMER_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(260347811635963702)
,p_prompt=>'3. Internal employee'
,p_source=>'CUSTOMER_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    le.LOEN_ICON || '' '' || le.LOEN_NAME   AS DISPLAY_VALUE',
'  , le.LOEN_ICON || '' '' || le.LOEN_NAME   AS RETURN_VALUE',
'FROM LOV_ENTRIES le',
'WHERE le.LOEN_DELETED_YN = ''NO''',
'  AND le.LOEN_ID IN (',
'        SELECT c.CUST_STATUS_FK',
'        FROM CUSTOMER c',
'        WHERE c.CUST_COMP_FK = (',
'                  SELECT COMP_ID',
'                    FROM COMPANY',
'                   WHERE COMP_NAME = ''Seniocon GmbH''',
'              )',
'          AND c.CUST_STATUS_FK IS NOT NULL',
'',
'          ------------------------------------------------------------------',
'          -- Date Filter (identisch zum Report)',
'          ------------------------------------------------------------------',
'          AND (',
'                (:P1410_START_DATE IS NULL AND :P1410_END_DATE IS NULL)',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NULL',
'                AND c.CUST_ORDER_DATE >= TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE <= TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                                          + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE BETWEEN',
'                        TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                    AND TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                        + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'          )',
'  );',
''))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_multi_value_trim_space=>false
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(127153786204681432)
,p_name=>'P1410_CUSTOMER_TECH_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(260347811635963702)
,p_prompt=>'4. Technical employee'
,p_source=>'CUSTOMER_TECH_STATUS'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT',
'    le.LOEN_ICON || '' '' || le.LOEN_NAME   AS DISPLAY_VALUE',
'  , le.LOEN_ICON || '' '' || le.LOEN_NAME   AS RETURN_VALUE',
'FROM LOV_ENTRIES le',
'WHERE le.LOEN_DELETED_YN = ''NO''',
'  AND le.LOEN_ID IN (',
'        SELECT c.CUST_INTERNAL_USER_STATUS_FK',
'        FROM CUSTOMER c',
'        WHERE c.CUST_COMP_FK = (',
'                  SELECT COMP_ID',
'                    FROM COMPANY',
'                   WHERE COMP_NAME = ''Seniocon GmbH''',
'              )',
'          AND c.CUST_INTERNAL_USER_STATUS_FK IS NOT NULL',
'',
'          ------------------------------------------------------------------',
'          -- Date Filter (identisch zum Report)',
'          ------------------------------------------------------------------',
'          AND (',
'                (:P1410_START_DATE IS NULL AND :P1410_END_DATE IS NULL)',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NULL',
'                AND c.CUST_ORDER_DATE >= TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE <= TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                                          + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'',
'             OR (',
'                    :P1410_START_DATE IS NOT NULL',
'                AND :P1410_END_DATE   IS NOT NULL',
'                AND c.CUST_ORDER_DATE BETWEEN',
'                        TO_DATE(:P1410_START_DATE, ''DD.MM.YYYY'')',
'                    AND TO_DATE(:P1410_END_DATE, ''DD.MM.YYYY'')',
'                        + INTERVAL ''23:59:59'' HOUR TO SECOND',
'                )',
'          )',
'  );',
''))
,p_item_template_options=>'#DEFAULT#'
,p_fc_show_label=>true
,p_fc_compute_counts=>true
,p_fc_show_counts=>true
,p_fc_zero_count_entries=>'H'
,p_fc_filter_values=>false
,p_fc_sort_by_top_counts=>true
,p_fc_show_selected_first=>false
,p_fc_show_chart=>false
,p_fc_toggleable=>false
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
,p_multi_value_trim_space=>false
,p_fc_filter_combination=>'OR'
,p_suggestions_type=>'DYNAMIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(260348001532963703)
,p_name=>'P1410_SEARCH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(260347811635963702)
,p_prompt=>'Search'
,p_source_type=>'FACET_COLUMN'
,p_display_as=>'NATIVE_SEARCH'
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'ROW'
,p_attribute_04=>'N'
,p_fc_show_chart=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(650554065658817813)
,p_name=>'P1410_EMPL_COMBO_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(657752796132078583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(650575752435817793)
,p_name=>'P1410_START_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(650545759148817844)
,p_prompt=>'Start Date'
,p_format_mask=>'DD.MM.YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(128537366108036969)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(650575852636817794)
,p_name=>'P1410_END_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(650545759148817844)
,p_prompt=>'End Date'
,p_format_mask=>'DD.MM.YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(128537366108036969)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(650576089969817796)
,p_name=>'P1410_TIMEFRAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(650545759148817844)
,p_prompt=>'Timeframe'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'GLOBAL_TIMEFRAME'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT disp AS display_value,',
'       code AS return_value',
'FROM (',
'    SELECT ''Day''     AS disp, ''D'' AS code, 1 AS sort_ord FROM DUAL',
'    UNION ALL',
'    SELECT ''Week''    AS disp, ''W'' AS code, 2 AS sort_ord FROM DUAL',
'    UNION ALL',
'    SELECT ''Month''   AS disp, ''M'' AS code, 3 AS sort_ord FROM DUAL',
'    UNION ALL',
'    SELECT ''Quarter'' AS disp, ''Q'' AS code, 4 AS sort_ord FROM DUAL',
'    UNION ALL',
'    SELECT ''Year''    AS disp, ''Y'' AS code, 5 AS sort_ord FROM DUAL',
')',
'ORDER BY sort_ord;',
''))
,p_tag_css_classes=>'btn_save_scroll_pos'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(128537106390036969)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'6'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(650576305595817798)
,p_name=>'P1410_TIMEFRAME_DETAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(650545759148817844)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'P1410_TIMEFRAME_DETAIL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISPLAY_VALUE',
'    , RETURN_VALUE',
'    from V_P1410_TIMEFRAME_DETAIL'))
,p_tag_css_classes=>'btn_save_scroll_pos'
,p_grid_label_column_span=>0
,p_display_when=>'P1410_TIMEFRAME'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(128537106390036969)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'12'
,p_attribute_02=>'SUBMIT'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(657758953294078531)
,p_name=>'P1410_FILTER_START_OPTION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(657752796132078583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(657880847918421398)
,p_name=>'P1410_SCROLL_POS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(657752796132078583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(657881255610421402)
,p_name=>'P1410_SCROLL_POS_PAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(657752796132078583)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260341682601987846)
,p_name=>'submit the page'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1410_EMPL_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260342134677987846)
,p_event_id=>wwv_flow_imp.id(260341682601987846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260342579705987846)
,p_name=>'open new tab info'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(260332996150987851)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260343058560987846)
,p_event_id=>wwv_flow_imp.id(260342579705987846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(657751947853078574)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260343411490987846)
,p_name=>'open new tab metrics info'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(260332563698987851)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260343947241987846)
,p_event_id=>wwv_flow_imp.id(260343411490987846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(657752529012078580)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260344370927987845)
,p_name=>'save scroll position before page submit'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'.btn_save_scroll_pos'
,p_bind_type=>'live'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260345311900987845)
,p_event_id=>wwv_flow_imp.id(260344370927987845)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'set value - current page nr'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1410_SCROLL_POS_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'&APP_PAGE_ID.'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260344870239987845)
,p_event_id=>wwv_flow_imp.id(260344370927987845)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>'set value - current page scroll position'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P1410_SCROLL_POS'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'window.scrollY'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(260345775913987845)
,p_name=>'scroll to last saved position'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P1410_SCROLL_POS_PAGE'
,p_display_when_cond2=>'&APP_PAGE_ID.'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(260346287310987845)
,p_event_id=>wwv_flow_imp.id(260345775913987845)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(document).on("apexafterrefresh", function() {',
'    var scrollPos = Number($v("P1410_SCROLL_POS"));',
'',
'    if (scrollPos > 0) {',
'        setTimeout(function () {',
'            window.scrollTo({',
'                top: scrollPos,',
'                behavior: "smooth"',
'            });',
'        }, 50);',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(127153832564681433)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(653638625876109167)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(127153959904681434)
,p_event_id=>wwv_flow_imp.id(127153832564681433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'PLUGIN_PRETIUS_EXTEND_CLASSIC_REPORT'
,p_attribute_01=>'freeze_column:freeze_header'
,p_attribute_02=>'1'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(260339929031987847)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Date Range'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ADMI_UTIL_PKG.pr_get_DATE_RANGE(',
'          pi_timeframe_item_name             => ''P1410_TIMEFRAME''',
'        , pi_timeframe_detail_item_name      => ''P1410_TIMEFRAME_DETAIL''',
'        , pi_request                         => :REQUEST ',
'        , pio_start_date                     => :P1410_START_DATE',
'        , pio_end_date                       => :P1410_END_DATE',
'        , pio_timeframe                      => :P1410_TIMEFRAME',
'        , pio_timeframe_detail               => :P1410_TIMEFRAME_DETAIL ',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>134144019426362650
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(260340383253987847)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'set start filter option'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'  v_s DATE := sysdate;',
'',
'begin',
'',
'',
'IF :P1410_FILTER_START_OPTION = ''START_CURRENT_MONTH'' THEN',
'',
'    -- Start = 1. Tag des aktuellen Monats',
'    :P1410_START_DATE := TO_CHAR(TRUNC(SYSDATE, ''MM''), ''DD.MM.YYYY'');',
'',
'    -- End = letzter Tag des aktuellen Monats',
'    :P1410_END_DATE   := TO_CHAR(LAST_DAY(SYSDATE), ''DD.MM.YYYY'');',
'',
'    :P1410_TIMEFRAME        := ''M'';  ',
'    :P1410_TIMEFRAME_DETAIL := TO_CHAR(v_s,''MM'');',
'',
'    :P1410_FILTER_START_OPTION := null;',
'',
'END IF;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>134144473648362650
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
