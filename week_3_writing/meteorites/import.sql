CREATE TABLE "meteorites_temp" (
    "name" TEXT DEFAULT NULL,
    "id_csv" INTEGER DEFAULT NULL,
    "nametype" TEXT DEFAULT NULL,
    "class" TEXT DEFAULT NULL,
    "mass" REAL DEFAULT NULL,
    "discovery" TEXT DEFAULT NULL,
    "year" INTEGER DEFAULT NULL,
    "lat" REAL DEFAULT NULL,
    "long" REAL DEFAULT NULL
);

.import --csv --skip 1 meteorites.csv meteorites_temp

-- set NULL TO empty data AND DELETE IT
UPDATE meteorites_temp SET name = NULL
WHERE TRIM(name) = '';

UPDATE meteorites_temp SET nametype = NULL
WHERE TRIM(nametype) = '';

UPDATE meteorites_temp SET class = NULL
WHERE TRIM(class) = '';

UPDATE meteorites_temp SET mass = NULL
WHERE TRIM(mass) = '';

UPDATE meteorites_temp SET discovery = NULL
WHERE TRIM(discovery) = '';

UPDATE meteorites_temp SET year = NULL
WHERE TRIM(year) = '';

UPDATE meteorites_temp SET lat = NULL
WHERE TRIM(lat) = '';

UPDATE meteorites_temp SET long = NULL
WHERE TRIM(long) = '';

DELETE FROM meteorites_temp
WHERE nametype  = 'Relict';

CREATE TABLE "meteorites" (
    "id" INTEGER,
    "name" TEXT DEFAULT NULL,
    "class" TEXT DEFAULT NULL,
    "mass" REAL DEFAULT NULL,
    "discovery" TEXT DEFAULT NULL,
    "year" INTEGER DEFAULT NULL,
    "lat" REAL DEFAULT NULL,
    "long" REAL DEFAULT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "meteorites" ("name", "class", "mass", "discovery", "year", "lat", "long")
SELECT "name", "class", ROUND("mass",2), "discovery", "year", ROUND("lat",2), ROUND("long",2) FROM "meteorites_temp"
ORDER BY year, name;

DROP TABLE meteorites_temp;
