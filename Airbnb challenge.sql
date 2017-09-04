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

--What time of year is the cheapest time to go to your city?

SELECT 
 avg(listings.price),
 strftime('%m',calendar.date) month
 
FROM 
 listings
 
JOIN 
 calendar 
ON 
 listings.id = calendar.listing_id
WHERE 
 calendar.available LIKE 't'

GROUP BY 2
ORDER BY 1

--What about the busiest?

SELECT 
 COUNT(calendar.available),
 strftime('%m',calendar.date) month
 
FROM 
 listings
 
JOIN 
 calendar 
ON 
 listings.id = calendar.listing_id
WHERE 
 calendar.available LIKE 't'

GROUP BY 2
ORDER BY 1 DESC 
