CREATE TABLE nobels(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    discipline TEXT,
    year INTEGER);
    
INSERT INTO nobels (name, discipline, year) 
VALUES 
    ("Annie Ernaux", "Literature", 2022),     ("Ales Bialiatski","peace", 2022),
    ( "Memorial","peace", 2022),
    ("Center for Civil Liberties","peace", 2022),
    ("Alain Aspect", "physics", 2022),
    ("Anton Zeilinger", "physics", 2022),
    ("John Clauser", "physics", 2022),
    ("Carolyn R. Bertozzi", "chemistry", 2022),
    ("Karl Barry Sharpless", "chemistry", 2022),
    ("Morten P. Meldal", "chemistry", 2022),
    ("Abdulrazak Gurnah", "Literature", 2021),
    ("Dmitry Muratov","peace", 2021),
    ("Maria Ressa","peace", 2021),
    ("Klaus Hasselmann", "physics", 2021),
    ("Giorgio Parisi", "physics", 2021),
    ("Syukuro Manabe", "physics", 2021),
    ("Benjamin List", "chemistry", 2021),
    ("David MacMillan", "chemistry", 2021),
    ("Louise Glück", "Literature", 2020),
    ("World Food Programme","peace", 2020),
    ("Andrea M. Ghez", "physics", 2020),
    ("Roger Penrose", "physics", 2020),
    ("Reinhard Genzel", "physics", 2020),
    ("Jennifer Doudna", "chemistry", 2020),
    ("Emmanuelle Charpentier", "chemistry", 2020);

CREATE TABLE countries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT);
    
INSERT INTO countries    
VALUES
    (1, "france"),
    (2, "Belarusian"),
    (3, "Russia"),
    (4, "Ukraine"),
    (5, "Austria"),
    (6, "America"),
    (7, "Danish"),
    (8, "Tanzanian"),
    (9, "Philipino"),
    (10, "German"),
    (11, "Italian"),
    (12, "Japanese"),
    (13, "British");

CREATE TABLE nobel_country (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id INTEGER,
    country_id INTEGER);
    
INSERT INTO nobel_country (person_id, country_id) 
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4),
    (5, 1),
    (6, 5),
    (7, 6),
    (8, 6),
    (9, 6),
    (10, 7),
    (11, 8),
    (12, 3),
    (13, 9),
    (14, 10),
    (15, 11),
    (16, 12),
    (17, 10),
    (18, 6),
    (19, 6),
    (20, 6),
    (21, 6),
    (22, 13),
    (23, 10),
    (24, 6),
    (25, 1);

SELECT nobels.name, countries.name AS country
FROM nobels
    JOIN nobel_country
    ON nobel_country.person_id = nobels.id
    JOIN countries
    ON countries.id = nobel_country.country_id
ORDER BY country;

SELECT COUNT(*) AS laureate_count, country
FROM (
    SELECT nobels.name, countries.name AS country
    FROM nobels
    JOIN nobel_country
    ON nobel_country.person_id = nobels.id
    JOIN countries
    ON countries.id = nobel_country.country_id
) AS subquery
GROUP BY country
ORDER BY laureate_count DESC;
