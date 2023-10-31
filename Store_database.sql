CREATE TABLE store (id INTEGER PRIMARY KEY, name TEXT, quantity INTEGER, color TEXT, price INTEGER, margin INTEGER );

INSERT INTO store VALUES (1, "child-bike", 4, 'blue', 150, 10);
INSERT INTO store VALUES (2, "child-bike", 1, 'red', 150, 15);
INSERT INTO store VALUES (3, "child-bike", 4, 'blue', 150, 10);
INSERT INTO store VALUES (4, "child-bike", 4, 'green', 150, 10);
INSERT INTO store VALUES (5, "child-bike", 4, 'yellow', 150, 10);

INSERT INTO store VALUES (6, "e-bike", 4, 'blue', 1500, 10);
INSERT INTO store VALUES (7, "e-bike", 5, 'blue', 1500, 10);
INSERT INTO store VALUES (8, "e-bike", 4, 'blue', 1500, 10);
INSERT INTO store VALUES (9, "e-bike", 2, 'red', 1500, 10);
INSERT INTO store VALUES (10, "e-bike", 1, 'yellow', 1500, 10);


INSERT INTO store VALUES (11, "trot", 1, 'blue', 50, 5);
INSERT INTO store VALUES (12, "trot", 4, 'yellow', 50, 5);
INSERT INTO store VALUES (13, "trot", 4, 'red', 50, 5);
INSERT INTO store VALUES (14, "trot", 4, 'green', 50, 5);
INSERT INTO store VALUES (15, "trot", 4, 'blue', 150, 5);


SELECT * FROM store ORDER BY price DESC;

SELECT SUM(price*quantity) FROM store;
SELECT AVG(price) FROM store;
