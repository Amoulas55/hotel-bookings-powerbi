SELECT 
  market_segment,
  COUNTIF(is_canceled = 1) AS canceled,
  COUNT(*) AS total,
  ROUND(COUNTIF(is_canceled = 1) / COUNT(*), 2) AS cancellation_rate
FROM `bookings-471508.Bookings.Data`
GROUP BY market_segment
ORDER BY cancellation_rate DESC;
