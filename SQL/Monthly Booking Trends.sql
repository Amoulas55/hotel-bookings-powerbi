SELECT 
  arrival_date_year AS year,
  arrival_date_month AS month,
  COUNT(*) AS total_bookings
FROM `bookings-471508.Bookings.Data_Clean`
WHERE is_canceled = 0
GROUP BY year, month
ORDER BY year, 
         PARSE_DATE('%B %Y', CONCAT(arrival_date_month, ' ', arrival_date_year));
