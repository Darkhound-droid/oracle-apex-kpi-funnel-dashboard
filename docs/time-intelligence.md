# Time Intelligence

## How `pr_resolve_timeframe_range` works

The package procedure resolves start and end dates based on a selected timeframe and optional navigation actions. It reads APEX session state for the selected timeframe and detail values, then calculates the appropriate date range and writes the results back to session state for downstream regions to consume.

## Auto-detect logic

When a manual date range is submitted, the procedure compares the difference between start and end dates and auto-selects the most appropriate timeframe:

- Same day → Day
- Up to 7 days → Week
- Up to 31 days → Month
- Up to 92 days → Quarter
- Beyond 92 days → Year

This ensures the dashboard stays aligned with the closest semantic timeframe even when users enter custom ranges.

## Supported timeframes

The procedure supports Day, Week, Month, Quarter, and Year. Each timeframe maps to a concrete start/end date range and a timeframe detail value used for navigation (for example, previous or next month).

## Why this scales better than client-side logic

Centralizing date logic in PL/SQL ensures all regions share the same interpretation of time. It also avoids client-side JavaScript dependency, reduces UI complexity, and keeps calculations close to the data, which is faster and more reliable for large datasets.
