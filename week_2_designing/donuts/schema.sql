CREATE TABLE "ingredients" (
    "id" INTEGER,
    "name" TEXT UNIQUE,
    PRIMARY KEY ("id")
);

CREATE TABLE "ingredient_purchases" (
    "id" INTEGER,
    "ingredient_id" INTEGER,
    "date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "unit" TEXT,
    "price_per_unit" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "ingredient_transactions" (
    "id" INTEGER,
    "ingredient_id" INTEGER,
    "date" NUMERIC NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "type" TEXT,
    "unit" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "donuts" (
    "id" INTEGER,
    "name" TEXT UNIQUE,
    "gluten_free" INTEGER DEFAULT 0,
    PRIMARY KEY ("id")
);

CREATE TABLE "donut_ingredients" (
    "id" INTEGER,
    "donut_id" INTEGER,
    "ingredient_id" INTEGER,
    "quantity_per_donut" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY ("ingredient_id") REFERENCES "ingredients"("id")
);

CREATE TABLE "customers" (
    "id" INTEGER,
    "first_name" TEXT,
    "last_name" TEXT,
    PRIMARY KEY("id")
);

CREATE TABLE "orders" (
    "id" INTEGER,
    "order_nb" INTEGER,
    "customer_id" INTEGER,
    "donut_id" INTEGER,
    "quantity" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("donut_id") REFERENCES "donuts"("id"),
    FOREIGN KEY ("customer_id") REFERENCES "customers"("id")
);
