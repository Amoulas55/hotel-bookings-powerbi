SELECT 
  distribution_channel,
  ROUND(AVG(adr), 2) AS avg_adr
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY distribution_channel
ORDER BY avg_adr DESC;
