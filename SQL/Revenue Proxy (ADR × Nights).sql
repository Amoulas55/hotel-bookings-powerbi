SELECT 
  hotel,
  SUM(total_nights * adr) AS total_revenue
FROM `bookings-471508.Bookings.Data_Clean`
WHERE is_canceled = 0
GROUP BY hotel
ORDER BY total_revenue DESC;
