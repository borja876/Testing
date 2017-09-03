--1. What are the three longest trips on rainy days?
SELECT 
  weather.Events,
  trips.start_station,
  trips.end_station,
  trips.trip_id,
  trips.duration
FROM 
  trips
JOIN 
  weather
ON 
  trips.zip_code = weather.ZIP
WHERE 
  events LIKE 'Rain'
ORDER BY 5 desc
LIMIT 3
  
--2. Which station is empty most often
SELECT 
  station_id,
  COUNT(*) times_without_bikes
FROM 
 status
WHERE 
  bikes_available = 0
GROUP BY 1
ORDER BY 2 DESC 

-- 3. Return a list of stations with a count of number of trips start at that station but ordered by dock count.
SELECT 
 stations.name,
 stations.station_id,
 COUNT(trips.start_station),
 stations.dockcount
FROM 
 stations
JOIN 
 trips
ON
 stations.name = trips.start_station
GROUP BY 2
ORDER BY 4 DESC 

--4. (Challenge) What's the third longest trip for each day it rains anywhere?
SELECT 
  trips.trip_id,
  trips.start_station,
  trips.end_station,
  weather.Events,
  trips.duration
FROM
  trips
JOIN
  weather 
ON
  trips.zip_code = weather.ZIP
WHERE 
  Events LIKE 'Rain'
GROUP BY 5
ORDER BY 5 DESC 
LIMIT 3
  
  