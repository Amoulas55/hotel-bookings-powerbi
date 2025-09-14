SELECT
  distribution_channel,
  COUNT(*) AS total_bookings,
  SUM(CASE WHEN is_canceled = 0 THEN total_nights * adr ELSE 0 END) AS total_revenue,
  ROUND(AVG(adr), 2) AS avg_adr,
  ROUND(COUNTIF(is_canceled = 1) / COUNT(*), 2) AS cancellation_rate
FROM `bookings-471508.Bookings.Data_Clean`
WHERE distribution_channel != 'Undefined'
GROUP BY distribution_channel
ORDER BY total_revenue DESC;
