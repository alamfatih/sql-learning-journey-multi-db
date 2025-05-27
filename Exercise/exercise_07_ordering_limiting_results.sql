-- Exercise 7: Retrieve all orders where 'discount' value is greater than zero ordered in descending order basis 'discount' value
SELECT * FROM sales WHERE discount > 0 ORDER BY discount DESC;

-- Exercise 7: Limit the number of results in above query to top 10
SELECT * FROM sales WHERE discount > 0 ORDER BY discount DESC LIMIT 10;