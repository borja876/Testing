-- The ID´s and duration for all trips of duration greater than 500 ordered by duration.
SELECT
  trip_id,
  duration
from
  trips
WHERE
  duration > 500
ORDER BY duration DESC

--Every column of the stations table for station id 84.
SELECT
*
FROM
stations
WHERE
station_id = 84

--The min temperatures of all the occurrences of rain in zip 94301
SELECT
  MinTemperatureF,
  Events,
  ZIP
FROM
  Weather
WHERE
  Events LIKE 'Rain' AND
  ZIP = 94301