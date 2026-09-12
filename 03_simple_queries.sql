-- Query 1: Display all Airbnb listings
SELECT *
FROM listings;

-- Query 2: Display selected columns
SELECT
    name,
    price,
    minimum_nights
FROM listings;

-- Query 3: Listings with price greater than $100
SELECT
    listing_id,
    name,
    price
FROM listings
WHERE price > 100;

-- Query 4: Listings with price less than $100
SELECT
    listing_id,
    name,
    price
FROM listings
WHERE price < 100;

-- Query 5: Display unique room types
SELECT DISTINCT
    room_type_id
FROM listings;

-- Query 6: Listings with minimum stay of 3 nights
SELECT
    listing_id,
    name,
    minimum_nights
FROM listings
WHERE minimum_nights = 3;

-- Query 7: Listings with zero availability
SELECT
    listing_id,
    name,
    availability_365
FROM listings
WHERE availability_365 = 0;

-- Query 8: Listings priced between $50 and $100
SELECT
    listing_id,
    name,
    price
FROM listings
WHERE price BETWEEN 50 AND 100;

-- Query 9: Listings with private rooms
SELECT
    listing_id,
    name,
    room_type_id
FROM listings
WHERE room_type_id = 2;

-- Query 10: Listings sorted by price from low to high
SELECT
    listing_id,
    name,
    price
FROM listings
ORDER BY price ASC;

-- Query 11: Display unique neighbourhood groups
SELECT DISTINCT
    neighbourhood_group
FROM locations;

-- Query 12: Count total listings
SELECT
    COUNT(*) AS total_listings
FROM listings;

-- Query 13: Count unique hosts
SELECT
    COUNT(DISTINCT host_id) AS total_unique_hosts
FROM listings;

-- Query 14: Find minimum listing price
SELECT
    MIN(price) AS minimum_price
FROM listings;

-- Query 15: Find maximum listing price
SELECT
    MAX(price) AS maximum_price
FROM listings;

-- Query 16: Calculate total listing price
SELECT
    SUM(price) AS total_listing_price
FROM listings;

-- Query 17: Calculate average listing price
SELECT
    ROUND(AVG(price), 2) AS average_price
FROM listings;

-- Query 18: Listings with minimum stay greater than 10 nights
SELECT
    listing_id,
    name,
    minimum_nights
FROM listings
WHERE minimum_nights > 10;

-- Query 19: Show the first 10 listings
SELECT *
FROM listings
LIMIT 10;
   
   -- Query 20: Listings with "room" in the name
SELECT
    listing_id,
    name,
    price
FROM listings
WHERE name LIKE '%room%';

-- Query 21: Listings priced at exactly $150
SELECT
    listing_id,
    name,
    price
FROM listings
WHERE price = 150;

-- Query 22: Listings with minimum nights between 1 and 7
SELECT
    listing_id,
    name,
    minimum_nights
FROM listings
WHERE minimum_nights BETWEEN 1 AND 7;

-- Query 23: Listings satisfying two conditions
SELECT
    listing_id,
    name,
    price,
    availability_365
FROM listings
WHERE price > 100
  AND availability_365 > 200;
  
  -- Query 24: Listings with a non-null last review date
SELECT
    listing_id,
    number_of_reviews,
    last_review
FROM reviews
WHERE last_review IS NOT NULL;

-- Query 25: Listings belonging to room type IDs 1 or 2
SELECT
    listing_id,
    name,
    room_type_id,
    price
FROM listings
WHERE room_type_id IN (1, 2);
