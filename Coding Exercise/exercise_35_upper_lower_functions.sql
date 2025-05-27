-- Quick coding exercise on UPPER LOWER function
-- Retrieve the customer names from the `Customers` table in uppercase.
-- Table Information:
-- The "Customers" table contains information about customers.
-- Each customer has a unique "CustomerID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "City" column stores the city where the customer is located.

SELECT
    UPPER(CustomerName) AS UppercaseCustomerName
FROM
    Customers;

-- Jika ingin juga contoh LOWER:
-- SELECT
--     LOWER(CustomerName) AS LowercaseCustomerName
-- FROM
--     Customers;