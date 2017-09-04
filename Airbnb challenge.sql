--What's the most expensive listing? What else can you tell me about the listing?
SELECT 
  id,
  neighbourhood,
  name,
  price
FROM 
  listings 
ORDER BY price DESC
limit 3 

--What neighborhoods seem to be the most popular?
SELECT
id,
neighbourhood,
sum(minimum_nights)
FROM 
 listings 
GROUP BY neighbourhood
ORDER BY 3 DESC
LIMIT 3

--What time of year is the cheapest time to go to your city? What about the busiest? - NOT WORKING
WITH 
 realtime
AS
(
SELECT 
 id,
 availability_365,
 price
FROM 
 listings
)

SELECT 
 realtime.price,
 availability_365,
 avg(realtime.price),
 strftime('%m',calendar.date)
FROM 
 realtime
JOIN 
 calendar
ON
 calendar.listing_id= realtime.id
GROUP BY 2