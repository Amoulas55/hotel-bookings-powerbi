CREATE OR REPLACE TABLE `bookings-471508.Bookings.Data_Clean` AS
WITH cleaned AS (
  SELECT
    hotel,
    is_canceled,
    lead_time,

    -- Fix NULLs for guests
    COALESCE(adults, 0) AS adults,
    COALESCE(children, 0) AS children,
    COALESCE(babies, 0) AS babies,

    -- Remove invalid ADR (no negatives)
    adr,

    -- Country code kept, will join with lookup later
    country,

    -- Market info
    market_segment,
    distribution_channel,
    is_repeated_guest,

    -- Stay details
    stays_in_weekend_nights,
    stays_in_week_nights,

    -- Arrival dates
    arrival_date_year,
    arrival_date_month,
    arrival_date_week_number,
    arrival_date_day_of_month,

    -- Reservation status + date (already DATE type)
    reservation_status,
    reservation_status_date,

    -- Add a calculated total_nights column
    (COALESCE(stays_in_weekend_nights,0) + COALESCE(stays_in_week_nights,0)) AS total_nights

  FROM `bookings-471508.Bookings.Data`
  WHERE 
    -- Keep only valid ADRs
    adr >= 0
    -- Remove bookings with no guests
    AND (COALESCE(adults,0) + COALESCE(children,0) + COALESCE(babies,0)) > 0
)

-- Deduplicate rows just in case
SELECT DISTINCT * 
FROM cleaned;
