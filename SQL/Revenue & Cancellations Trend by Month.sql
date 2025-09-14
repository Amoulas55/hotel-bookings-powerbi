SELECT
  arrival_date_year AS year,
  arrival_date_month AS month,
  SUM(CASE WHEN is_canceled = 0 THEN total_nights * adr ELSE 0 END) AS total_revenue,
  COUNTIF(is_canceled = 1) AS total_cancellations,
  COUNT(*) AS total_bookings,
  ROUND(COUNTIF(is_canceled = 1) / COUNT(*), 2) AS cancellation_rate
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY year, month
ORDER BY year, PARSE_DATE('%B %Y', CONCAT(month, ' ', year));
