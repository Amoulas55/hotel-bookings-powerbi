SELECT 
  CASE 
    WHEN is_repeated_guest = 1 THEN 'Repeat Guest'
    ELSE 'New Guest'
  END AS guest_type,
  COUNT(*) AS total_bookings
FROM `bookings-471508.Bookings.Data_Clean`
GROUP BY guest_type
ORDER BY total_bookings DESC;
