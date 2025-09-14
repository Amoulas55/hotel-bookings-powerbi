SELECT 
  cl.country_name,
  SUM(total_nights * adr) AS total_revenue
FROM `bookings-471508.Bookings.Data_Clean` d
LEFT JOIN `bookings-471508.Bookings.country_lookup` cl
  ON d.country = cl.country_code
WHERE is_canceled = 0
GROUP BY cl.country_name
ORDER BY total_revenue DESC
LIMIT 10;
