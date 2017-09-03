--1.a. What was the hottest day in our data set? Where was that?
SELECT
  date,
  ZIP,
  max(MaxTemperatureF)
FROM
  weather

--1.b. Find station/s with zip code 94063 in trips

SELECT
  start_station,
  zip_code
FROM
  trips
WHERE
  zip_code = 94063
  
--1.c. Find city in which the one of the stations is

SELECT
 name,
 city
FROM
 stations
WHERE
 name LIKE 'San Francisco Caltrain 2 (330 Townsend)'
 
 --How many trips started at each station?
SELECT
  start_station,
  COUNT(*) trip_count
FROM
  trips
Group by start_station

--What's the shortest trip that happened?
SELECT 
  trip_id,
  start_station,
  end_station,
  min(duration)
FROM 
  trips
  
  --What is the average trip duration, by end station?
SELECT 
  end_station,
  AVG(duration)
FROM 
  trips 
GROUP BY 1

