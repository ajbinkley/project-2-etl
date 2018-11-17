-- Create and use customer_db
CREATE DATABASE movie_data_db;
USE movie_data_db;

-- Create tables for raw data to be loaded into
CREATE TABLE nyt (
id INT PRIMARY KEY,
title_nyt TEXT,
byline_nyt TEXT,
open_date_nyt TEXT
);

CREATE TABLE omdb (
id INT PRIMARY KEY,
title_omdb TEXT,
omdb_year TEXT,
omdb_id TEXT
);


-- Join tables in MySQL
select nyt.id, title_nyt, byline_nyt, open_date_nyt, omdb_year, omdb_id from nyt
join omdb on omdb.title_omdb = nyt.title_nyt;
