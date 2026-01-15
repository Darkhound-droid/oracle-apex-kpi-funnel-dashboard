# Smart Filters

## FACET_COLUMN concept

FACET_COLUMN is an APEX feature that allows filters to be defined directly on report columns. Each facet value reflects the distinct values of the column, and APEX manages the filtering automatically.

## Count computation

Facet counts are calculated by APEX using the underlying report query. This keeps counts accurate and ensures the filter UI always reflects the same dataset as the report.

## Filter and report coupling

Smart filters are tied to a single report query. When a user selects a facet, the report query is re-executed with the corresponding filter predicates. This tight coupling keeps the behavior predictable and reduces custom coding.

## Best practices in APEX

- Build facets on indexed columns to keep count queries fast.
- Use views to expose clean, stable column names for facet definitions.
- Keep filter logic in SQL rather than in the UI so it can be reused by other regions.
