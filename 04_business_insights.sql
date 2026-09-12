-- Business Insight 1: Which neighbourhood group has the most Airbnb listings?
SELECT
    loc.neighbourhood_group,
    COUNT(*) AS total_listings
FROM listings l
JOIN locations loc
    ON l.location_id = loc.location_id
GROUP BY loc.neighbourhood_group
ORDER BY total_listings DESC;
-- Business Insight 1: Brooklyn and Manhattan have the highest number of Airbnb listings, with 49 listings each, while Queens has only 2 listings in the 100-row sample.

-- Business Insight 2: Which neighbourhood has the most Airbnb listings?
SELECT
    loc.neighbourhood,
    COUNT(*) AS total_listings
FROM listings l
JOIN locations loc
    ON l.location_id = loc.location_id
GROUP BY loc.neighbourhood
ORDER BY total_listings DESC
LIMIT 1;
-- Business Insight 2: Williamsburg has the highest number of Airbnb listings in the 100-row sample.

-- Business Insight 3: Which neighbourhood group has the highest average listing price?

SELECT
    loc.neighbourhood_group,
    ROUND(AVG(l.price), 2) AS avg_price
FROM listings l
JOIN locations loc
    ON l.location_id = loc.location_id
GROUP BY loc.neighbourhood_group
ORDER BY avg_price DESC;
-- Business Insight 3: Brooklyn has the highest average Airbnb listing price among the three neighbourhood groups.

-- Business Insight 4: What is the average minimum stay for all listings?
SELECT
    ROUND(AVG(minimum_nights), 2) AS average_minimum_nights
FROM listings;
-- Business Insight 4: The average minimum stay across the 100 Airbnb listings is 9.44 nights.

-- Business Insight 5: Which room type has the highest average minimum stay?
SELECT
    rt.room_type,
    ROUND(AVG(l.minimum_nights), 2) AS avg_minimum_nights
FROM listings l
JOIN room_types rt
    ON l.room_type_id = rt.room_type_id
GROUP BY rt.room_type
ORDER BY avg_minimum_nights DESC;
-- Business Insight 5: Entire home/apt has the highest average minimum stay among the room types in our 100-row sample.

-- Business Insight 6: What is the average availability of Airbnb listings?
SELECT
    ROUND(AVG(availability_365), 2) AS average_availability
FROM listings;
-- Business Insight 6: The average Airbnb listing availability is 204.17 days per year in our 100-row sample.

-- Business Insight 7: Which listing has the highest number of reviews?
SELECT
    l.listing_id,
    l.name,
    r.number_of_reviews
FROM listings l
JOIN reviews r
    ON l.listing_id = r.listing_id
WHERE r.number_of_reviews = (
    SELECT MAX(number_of_reviews)
    FROM reviews
);
-- Business Insight 7: Large Furnished Room Near B'way has the highest number of reviews, with 430 reviews.

-- Business Insight 8: Which listing has the highest reviews per month?
SELECT
    l.listing_id,
    l.name,
    r.reviews_per_month
FROM listings l
JOIN reviews r
    ON l.listing_id = r.listing_id
WHERE r.reviews_per_month = (
    SELECT MAX(reviews_per_month)
    FROM reviews
);
-- Business Insight 8: Sunny, Modern room in East Village has the highest reviews per month, with 4.72 reviews per month.

-- Business Insight 9: What is the total listing price by neighbourhood group?
SELECT
    loc.neighbourhood_group,
    SUM(l.price) AS total_listing_price
FROM listings l
JOIN locations loc
    ON l.location_id = loc.location_id
GROUP BY loc.neighbourhood_group
ORDER BY total_listing_price DESC;
-- Business Insight 9: The total listing price is $6,644 for Brooklyn, $6,320 for Manhattan, and $200 for Queens.

-- Business Insight 10: Which listing has the highest price?( Most expensive Airbnb listing)
SELECT
    listing_id,
    name,
    price
FROM listings
ORDER BY price DESC
LIMIT 1;
-- Perfect for a family or small group is the most expensive listing in this 100-row sample.
