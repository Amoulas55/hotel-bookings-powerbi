SELECT 
  hotel,
  ROUND(AVG(total_nights), 2) AS avg_nights
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY hotel
ORDER BY avg_nights DESC;
