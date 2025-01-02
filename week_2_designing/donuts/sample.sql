INSERT INTO "ingredients" ("name")
VALUES
('Cocoa'),
('Sugar'),
('Flour'),
('Buttermilk'),
('Sprinkles');

INSERT INTO "ingredient_purchases" ("ingredient_id", "unit", "price_per_unit")
VALUES
(1, 'pound', 5), -- Cocoa
(2, 'pound', 2); -- Sugar

INSERT INTO "donuts" ("name", "gluten_free")
VALUES
('Belgian Dark Chocolate', 0),
('Back-To-School Sprinkles', 0);

INSERT INTO "donut_ingredients" ("donut_id", "ingredient_id", "quantity_per_donut")
VALUES
(1, 1, 1), -- Cocoa in Belgian Dark Chocolate
(1, 3, 1), -- Flour in Belgian Dark Chocolate
(1, 4, 1), -- Buttermilk in Belgian Dark Chocolate
(1, 2, 1), -- Sugar in Belgian Dark Chocolate
(2, 3, 1), -- Flour in Back-To-School Sprinkles
(2, 4, 1), -- Buttermilk in Back-To-School Sprinkles
(2, 2, 1), -- Sugar in Back-To-School Sprinkles
(2, 5, 1); -- Sprinkles in Back-To-School Sprinkles

INSERT INTO "customers" ("first_name", "last_name")
VALUES
('Luis', 'Singh');

INSERT INTO "orders" ("order_nb", "customer_id", "donut_id", "quantity")
VALUES
(101, 1, 1, 3), -- 3 Belgian Dark Chocolate donuts
(102, 1, 2, 2); -- 2 Back-To-School Sprinkles donuts
