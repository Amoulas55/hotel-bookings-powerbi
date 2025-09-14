SELECT 
  COUNT(*) AS total_bookings,
  COUNTIF(is_canceled = 1) AS total_canceled,
  COUNTIF(is_canceled = 0) AS total_confirmed
FROM `bookings-471508.Bookings.Data_Clean`;
