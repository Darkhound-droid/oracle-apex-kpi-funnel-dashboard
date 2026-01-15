# Page 1410 (KPI Funnel Dashboard)

## Purpose

Page 1410 renders the KPI funnel dashboard for Lead → Customer conversion. It combines smart filters, KPI cards, and a report region to provide a complete funnel view on one page.

## Region layout

- **Filters region**: Smart Filters based on FACET_COLUMN definitions. These facets filter the report query and drive counts in the UI.
- **KPI region**: KPI cards sourced from SQL and date ranges resolved by PL/SQL. KPIs reflect the active timeframe and filters.
- **Report region**: The detail report that lists leads/customers and responds to the smart filters.

## Why KPIs are generated via PL/SQL

KPI values depend on a consistent timeframe across all regions. The PL/SQL procedure resolves the timeframe once and stores the results in session state, ensuring every KPI query uses the same date range and supporting semantic navigation such as previous/next period.

## How Smart Filters are wired to the report

Smart Filters are defined on report columns using FACET_COLUMN. APEX automatically applies the selected facets to the report query, and the filter counts are calculated from the same query to keep the UI and data in sync.

## Required APEX version

APEX 22.2 or later is recommended to ensure full support for smart filters, facets, and modern region rendering.
