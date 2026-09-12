CREATE DATABASE airbnb_analysis;
USE airbnb_analysis;

CREATE TABLE hosts (
    host_id BIGINT PRIMARY KEY,
    host_name VARCHAR(100),
    calculated_host_listings_count INT
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    neighbourhood_group VARCHAR(50),
    neighbourhood VARCHAR(100),
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7)
);

CREATE TABLE room_types (
    room_type_id INT PRIMARY KEY AUTO_INCREMENT,
    room_type VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE listings (
    listing_id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    host_id BIGINT,
    location_id INT,
    room_type_id INT,
    price DECIMAL(10,2),
    minimum_nights INT,
    availability_365 INT,
    FOREIGN KEY (host_id) REFERENCES hosts(host_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id),
    FOREIGN KEY (room_type_id) REFERENCES room_types(room_type_id)
);

CREATE TABLE reviews (
    review_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    listing_id BIGINT,
    number_of_reviews INT,
    last_review DATE,
    reviews_per_month DECIMAL(5,2),
    FOREIGN KEY (listing_id) REFERENCES listings(listing_id)
);
