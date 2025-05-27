-- Exercise 11: Get data with all columns of sales table, and customer name, customer age, product name and category are in the same result set.
-- (use JOIN in subquery)
SELECT
    c.customer_name, -- Customer Name from Customers table
    c.age,           -- Customer Age from Customers table
    sp.* -- All columns from the subquery result (which includes sales table columns, product name, and category)
FROM
    customer AS c
RIGHT JOIN
    (
        -- Subquery to get all sales data, joined with product name and category
        SELECT
            s.*,         -- All columns from the sales table
            p.product_name,
            p.category
        FROM
            sales AS s
        LEFT JOIN
            product AS p ON s.product_id = p.product_id
    ) AS sp ON c.customer_id = sp.customer_id;