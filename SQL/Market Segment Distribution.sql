SELECT 
  market_segment,
  COUNT(*) AS total_bookings
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY market_segment
ORDER BY total_bookings DESC;
