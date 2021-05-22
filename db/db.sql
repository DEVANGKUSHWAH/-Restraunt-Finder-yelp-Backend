CREATE TABLE reviews (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    restaurant_id BIGINT NOT NULL REFERENCES restaurants(id),
    name VARCHAR(50) NOT NULL,
    review TEXT NOT NULL,
    rating INT NOT NULL check(
        rating >= 1
        and rating <= 5
    )
);
CREATE TABLE restaurants ( 
    id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50),
    price_range INT
);

-- INSERT INTO restaurants(id, name, location, price_range) value(123, 'mcdonalds', 'new york', 3); 

-- CREATE TABLE restaurants (
--     id BIGSERIAL NOT NULL,
--     name VARCHAR(50) NOT NULL,
--     location VARCHAR(50) NOT NULL,
--     price_range INT NOT NULL check(price_range >= 1 and price_range <=5)
-- ); 

 
-- CREATE TABLE restaurants (
--     id BIGSERIAL NOT NULL PRIMARY KEY,
--     name VARCHAR(50) NOT NULL,
--     location VARCHAR(50) NOT NULL,
--     price_range INT NOT NULL check(price_range >= 1 and price_range <=5)
-- ); 




-- Review Table

--  CREATE TABLE reviews (
--     id BIGSERIAL NOT NULL PRIMARY KEY,
--     restaurant_id BIGINT NOT NULL REFERENCES restaurants(id),
--     name VARCHAR(50) NOT NULL,
--     review TEXT NOT NULL,
--     rating INT NOT NULL check(
--         rating >= 1
--         and rating <= 5
--     )
-- );

-- INSERT INTO reviews (restaurant_id, name, review, rating) values (1, 'Devang', 'restaurant was awesome', 5);

-- select * from reviews where restaurant_id = 1;

-- select *
-- from restaurants
--     left join(
--         select restaurant_id,
--             count(*),
--             TRUNC(AVG(rating, 1)) as average_rating
--         from reviews
--         group by restaurant_id
--     ) reviews on restaurants.id = reviews.restaurant_id; 



--     select count(*) from reviews;

--     select MIN(rating) from reviews;

--     select MAX(rating) from reviews;

--     select AVG(rating) from reviews;

--     select trunc(AVG(rating), 2) from reviews;

--     select trunc(AVG(rating), 2) AS average_review from reviews;

--     select name, rating from reviews;

--     select name as username, rating as restaurant_rating from reviews;
     

--      select AVG(rating) from reviews where restaurant_id = 2;

--      select trunc(AVG(rating),2 ) from reviews where restaurant_id = 2;

--         select trunc(AVG(rating),2 ) as average_rating from reviews where restaurant_id = 2;

--         select count(rating) from reviews where restaurant_id = 2;

--         select location, count(location) from restaurants group by location; 

--         select restaurant_id, count(restaurant_id) from reviews group by restaurant_id;

--         select restaurant_id, AVG(rating) from reviews group by restaurant_id;

--         select restaurant_id, AVG(rating), count(rating) from reviews group by restaurant_id;

--         select * from restaurants inner join reviews on restaurants.id = reviews.restaurant_id;

--         select * from restaurants left join reviews on restaurants.id = reviews.restaurant_id;

--         select * from restaurants right join reviews on restaurants.id = reviews.restaurant_id;

--          select * from restaurants full outer join reviews on restaurants.id = reviews.restaurant_id;



--         select * from restaurants left join (select restaurent_id, COUNT(*), TRUNC(AVG(rating),1) as average_rating from reviews group by restaurant_id) reviews on restaurants.id = reviews.restaurant_id;