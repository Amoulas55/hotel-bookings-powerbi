SELECT 
  hotel,
  COUNTIF(is_canceled = 1) / COUNT(*) AS cancellation_rate
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY hotel
ORDER BY cancellation_rate DESC;
