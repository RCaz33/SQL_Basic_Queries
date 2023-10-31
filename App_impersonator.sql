/* What does the app's SQL look like? */

CREATE TABLE wines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    grapes TEXT);
    
INSERT INTO wines (type, grapes)
VALUES 
    ("red", "cabernet"),
    ("white", "sauvignon"),
    ("rose", "syrah");


ALTER TABLE wines ADD price INTEGER default 0;

SELECT * FROM wines;

UPDATE wines SET price = 34 WHERE id=1;
UPDATE wines SET price = 21 WHERE id=2;
UPDATE wines SET price = 13 WHERE id=3;

SELECT * FROM wines;

INSERT INTO wines (type, grapes, price)
    VALUES ("champagne", "chardonnay", 55);

SELECT * FROM wines;

DELETE FROM wines WHERE id = 3;

SELECT * FROM wines;

INSERT INTO wines (type, grapes, price)
    VALUES ("rose", "Grenache", 8);

SELECT * FROM wines;
