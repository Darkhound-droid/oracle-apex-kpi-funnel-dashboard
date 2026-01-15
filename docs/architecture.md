# Architecture

## Overview

The dashboard follows a simple layered flow: data lives in the database, business logic is expressed in PL/SQL, and APEX renders the UI. This separation keeps the page configuration light while ensuring consistent KPI calculations.

```
Database tables → Views → PL/SQL time intelligence → APEX regions (KPIs, report, filters)
```

## Why KPIs are server-side

KPI values are computed in SQL and PL/SQL so they are accurate, performant, and consistent with the database state. Server-side computation also enables reuse of the same logic in multiple APEX regions without duplicating formulas in the UI.

## Why FACET_COLUMN filters are used

FACET_COLUMN filters are native APEX smart filters that bind directly to a report query. They provide the following benefits:

- Automatic counts per filter value.
- Tight coupling between filters and report without custom code.
- A standard APEX pattern that scales well as more filters are added.

## Performance considerations

- Keep KPI calculations in views or SQL queries to minimize APEX logic.
- Use indexed columns for filter facets to keep count queries fast.
- Centralize timeframe logic so all regions resolve the same date ranges and avoid inconsistent caching.
