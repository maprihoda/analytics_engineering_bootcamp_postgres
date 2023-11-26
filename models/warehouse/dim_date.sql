SELECT
  to_char(d, 'YYYY-MM-DD') AS id,
  d                        AS full_date,
  EXTRACT(YEAR FROM d)     AS year,
  EXTRACT(WEEK FROM d)     AS year_week,
  EXTRACT(DAY FROM d)      AS year_day,
  EXTRACT(YEAR FROM d)     AS fiscal_year,
  to_char(d, 'Q')          AS fiscal_qtr,
  EXTRACT(MONTH FROM d)    AS month,
  to_char(d, 'Month')      AS month_name,
  to_char(d, 'ID')         AS week_day,
  to_char(d, 'Day')        AS day_name,
  CASE
    WHEN TRIM(to_char(d, 'Day')) IN ('Sunday', 'Saturday') THEN 0
    ELSE 1
  END AS day_is_weekday
FROM (
  SELECT generate_series(
    '2014-01-01'::date,
    '2050-01-01'::date,
    '1 day'::interval
  ) AS d
) AS date_series
