DROP TABLE IF EXISTS movie_person;
DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS person_role;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS movie
(
    id          SERIAL PRIMARY KEY,
    title       VARCHAR(256) NOT NULL,
    year        INT,
    country     VARCHAR(256) NOT NULL,
    --     если это у меня enum, тогда здесь мы просто указываем varchar?
    genre       VARCHAR(256) NOT NULL,
    image       VARCHAR(128),
    description VARCHAR(512)
);

CREATE TABLE IF NOT EXISTS person
(
    id         SERIAL PRIMARY KEY,
    name       VARCHAR(256) NOT NULL,
    birth_date DATE
);

CREATE TABLE IF NOT EXISTS movie_person
(
    id        SERIAL PRIMARY KEY,
    movie_id  INT REFERENCES movie (id),
    person_id INT REFERENCES person (id),
--     если это у меня enum, тогда здесь мы просто указываем varchar?
    role      VARCHAR(256) NOT NULL
);


CREATE TABLE IF NOT EXISTS users
(
    id       SERIAL PRIMARY KEY,
    name     VARCHAR(256) NOT NULL,
    birthday DATE NOT NULL,
    password VARCHAR(256) NOT NULL,
    email    VARCHAR(256) NOT NULL UNIQUE,
    image   VARCHAR(124),
    role     VARCHAR(32)  NOT NULL,
    gender    VARCHAR(32)  NOT NULL
);

CREATE TABLE IF NOT EXISTS review
(
    id       SERIAL PRIMARY KEY,
    user_id  INT REFERENCES users (id),
    movie_id INT REFERENCES movie (id),
    text     VARCHAR(256),
    rate     INT
);