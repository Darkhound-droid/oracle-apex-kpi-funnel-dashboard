# SQL Layer

This folder contains the database objects that support the KPI funnel dashboard. The scripts are designed to be executed in order and kept close to the APEX page export so the project can be installed quickly.

## Files and purpose

1. `01_tables.sql` creates the core tables and foreign keys for leads, customers, and status lookups.
2. `02_sample_data.sql` inserts minimal sample rows so the dashboard renders without additional data entry.
3. `03_views.sql` is the place to define reporting and KPI views that APEX regions can query directly.
4. `04_time_intelligence_pkg.sql` defines the centralized timeframe package used by the dashboard to resolve date ranges consistently.

## Required execution order

Run the scripts in numeric order:

1. `01_tables.sql`
2. `02_sample_data.sql`
3. `03_views.sql`
4. `04_time_intelligence_pkg.sql`

## Dependencies

- Tables in `01_tables.sql` are the foundation for all other objects.
- Sample data depends on the tables and lookups already existing.
- Views should select from the tables and can encapsulate joins or calculations for KPIs.
- The time intelligence package is referenced by APEX processes to resolve date ranges used in KPIs and reports.

## Why time intelligence is centralized

Date range logic is shared across all KPI cards and reports. Centralizing it in a package avoids duplicated logic, keeps APEX processes consistent, and makes future changes (like adding a new timeframe) a single-file update.
