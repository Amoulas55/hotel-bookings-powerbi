SELECT 
  cl.country_name,
  COUNT(*) AS total_bookings
FROM `bookings-471508.Bookings.Data_Clean` d
LEFT JOIN `bookings-471508.Bookings.country_lookup` cl
  ON d.country = cl.country_code
GROUP BY cl.country_name
ORDER BY total_bookings DESC
LIMIT 10;
