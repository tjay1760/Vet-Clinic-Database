CREATE TABLE "invoice_items"(
    "id" INTEGER NOT NULL,
    "unit_price" DECIMAL(8, 2) NOT NULL,
    "quantity" INTEGER NOT NULL,
    "total_price" DECIMAL(8, 2) NOT NULL,
    "invoice_id" INTEGER NOT NULL,
    "treatment_id" INTEGER NOT NULL
);

ALTER TABLE
    "invoice_items" ADD PRIMARY KEY("id");
CREATE TABLE "treatments"(
    "id" INTEGER NOT NULL,
    "type" VARCHAR(255) NOT NULL,
    "name" VARCHAR(255) NOT NULL
);

ALTER TABLE
    "treatments" ADD PRIMARY KEY("id");
CREATE TABLE "invoices"(
    "id" INTEGER NOT NULL,
    "total_amount" DECIMAL(8, 2) NOT NULL,
    "generated_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "payed_at" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "medical_history_id" INTEGER NOT NULL
);

ALTER TABLE
    "invoices" ADD PRIMARY KEY("id");
CREATE TABLE "patients"(
    "id" INTEGER NOT NULL,
    "name" VARCHAR(255) NOT NULL,
    "date_of_birth" DATE NOT NULL
);