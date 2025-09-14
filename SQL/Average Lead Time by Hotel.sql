SELECT 
  hotel,
  ROUND(AVG(lead_time), 2) AS avg_lead_time
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY hotel
ORDER BY avg_lead_time DESC;
