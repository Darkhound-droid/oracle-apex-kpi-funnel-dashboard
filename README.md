# Oracle APEX KPI Funnel Dashboard

KPI-driven Lead-to-Customer Conversion Dashboard built with Oracle APEX.

## What this repo contains

/apex
- Page 1410 export (Customer Created KPI Funnel Dashboard)

/sql
- 01_tables.sql            → Sample data model
- 02_sample_data.sql       → Demo data
- 03_views.sql             → KPI / aggregation views
- 04_time_intelligence_pkg.sql → Centralized timeframe logic

## Prerequisites

- Oracle Database 19c+
- Oracle APEX 23.2+
- Workspace access with CREATE TABLE / VIEW / PACKAGE privileges

## Installation (5 minutes)

1. Run SQL scripts **in this order**:
   - 01_tables.sql
   - 02_sample_data.sql
   - 03_views.sql
   - 04_time_intelligence_pkg.sql

2. Import the APEX page:
   - APEX → App Builder → Import
   - Import `/apex/page-1410/page-1410.sql`

3. Open Page 1410 and run it.

## Features

- KPI funnel (Lead → Appointment → Sales → Customer)
- Centralized timeframe logic (Day / Week / Month / Quarter / Year)
- Smart Filters with FACET_COLUMN + counts
- Server-side KPI rendering (PL/SQL)
- Clean, extensible data model

## License
MIT
