-- SQL Script to create the 'coffee_shop_sales' table in PostgreSQL.
-- This table stores detailed information about coffee shop transactions.

CREATE TABLE coffee_shop_sales (
    transaction_id INT PRIMARY KEY,         -- Unique identifier for each transaction.
    transaction_date DATE NOT NULL,         -- Date when the transaction occurred.
    transaction_time TIME NOT NULL,         -- Time when the transaction occurred.
    transaction_qty INT NOT NULL,           -- Quantity of product sold in the transaction.
    store_id INT NOT NULL,                  -- Identifier for the store where the transaction took place.
    store_location VARCHAR(100) NOT NULL,   -- Location of the store.
    product_id INT NOT NULL,                -- Identifier for the product sold.
    unit_price NUMERIC(10, 2) NOT NULL,     -- Price per unit of the product.
    product_category VARCHAR(100) NOT NULL, -- Category of the product (e.g., Coffee, Bakery).
    product_type VARCHAR(100) NOT NULL,     -- Type of the product (e.g., Espresso, Latte).
    product_detail VARCHAR(255) NOT NULL    -- Specific details of the product (e.g., Espresso Macchiato, Chocolate Croissant).
);