CREATE TABLE "users" (
    "id" INTEGER,
    "first_name" TEXT,
    "username" TEXT,
    "password" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "schools_and_unis" (
    "id" INTEGER,
    "name" TEXT,
    "type" TEXT,
    "location" TEXT,
    "year" INTEGER,
    PRIMARY KEY ("id")
);

CREATE TABLE "companies" (
    "id" INTEGER,
    "name" TEXT,
    "industry" TEXT,
    "location" TEXT,
    PRIMARY KEY ("id")
);

CREATE TABLE "users_conn" (
    "id" INTEGER,
    "user_a_id" INTEGER,
    "user_b_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_a_id") REFERENCES "users"("id"),
    FOREIGN KEY ("user_b_id") REFERENCES "users"("id")
);

CREATE TABLE "users_schools_conn" (
    "id" INTEGER,
    "user_id" INTEGER,
    "school_id" INTEGER,
    "start_affiliation" NUMBER,
    "end_affiliation" NUMBER,
    "degree" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("school_id") REFERENCES "schools_and_unis"("id")
);

CREATE TABLE "users_companies_conn" (
    "id" INTEGER,
    "user_id" INTEGER,
    "company_id" INTEGER,
    "start_affiliation" NUMBER,
    "end_affiliation" NUMBER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("user_id") REFERENCES "users"("id"),
    FOREIGN KEY ("company_id") REFERENCES "companies"("id")
);






