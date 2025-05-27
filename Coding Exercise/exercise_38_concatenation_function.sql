-- Quick coding exercise on CONCATENATION function
-- Get a list of Customer names along with their city names by concatenating
-- the Customer names and city names from the Customers table.
-- Table Information:
-- The "Customers" table contains information about customers.
-- Each customer has a unique "CustomerID" as the primary key.
-- The "CustomerName" column stores the name of the customer.
-- The "City" column stores the city where the customer is located.

SELECT
    CONCAT(CustomerName, ', ', City) AS Customer_City_Combined -- Menggunakan CONCAT()
FROM
    Customers;

-- Atau, menggunakan operator || (lebih standar di beberapa database seperti PostgreSQL, Oracle)
-- SELECT
--     CustomerName || ', ' || City AS Customer_City_Combined
-- FROM
--     Customers;