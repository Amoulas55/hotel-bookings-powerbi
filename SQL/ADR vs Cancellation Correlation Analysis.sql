SELECT
  ROUND(adr, 0) AS adr_bucket,
  COUNT(*) AS total_bookings,
  COUNTIF(is_canceled = 1) AS canceled_bookings,
  ROUND(COUNTIF(is_canceled = 1) / COUNT(*), 2) AS cancellation_rate
FROM `bookings-471508.Bookings.Data_Clean`
WHERE adr BETWEEN 0 AND 500  -- filter out extreme outliers
GROUP BY adr_bucket
ORDER BY adr_bucket;
