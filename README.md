# Airbnb MySQL Data Analysis Project

## Project Overview

This project analyzes Airbnb listing data from New York City using MySQL.

The objective is to understand listing prices, room types, locations, availability, hosts, and reviews through SQL queries.

## Dataset

The project uses a sample of 100 listings from the Airbnb NYC 2019 dataset.

The dataset contains information about:

- Listing names
- Hosts
- Neighbourhoods
- Room types
- Prices
- Minimum nights
- Availability
- Reviews

## Database Tables

The database contains five tables:

1. **hosts** – Stores host information.
2. **locations** – Stores neighbourhood and geographical information.
3. **room_types** – Stores different room types.
4. **listings** – Stores Airbnb listing details.
5. **reviews** – Stores review-related information.

## SQL Concepts Used

- SELECT
- WHERE
- DISTINCT
- BETWEEN
- IN
- LIKE
- ORDER BY
- LIMIT
- COUNT
- SUM
- AVG
- MIN
- MAX
- GROUP BY
- JOIN
- Subqueries
- Window functions

## Business Insights

The project analyzes:

- Number of listings by neighbourhood group
- Number of listings by neighbourhood
- Average price by neighbourhood group
- Average minimum stay
- Average availability
- Listing with the highest number of reviews
- Listing with the highest reviews per month
- Total listing price by neighbourhood group
- Most expensive listing

## Project Files

- `01_create_database_tables.sql` – Creates the database and tables.
- `02_insert_data.sql` – Inserts the sample data.
- `03_simple_queries.sql` – Contains simple SQL queries.
- `04_business_insights.sql` – Contains business analysis queries.

## Tools Used

- MySQL
- SQL
- GitHub
- Airbnb NYC 2019 dataset

## Conclusion

This project helped me practice database design, primary keys, foreign keys, joins, filtering, aggregation, and business data analysis using MySQL.
