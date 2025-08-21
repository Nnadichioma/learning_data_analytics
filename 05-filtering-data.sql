-- Insert sample data into app_users_1
INSERT INTO app_users_1 (id, user_name, email, age, city, middle_name)
VALUES
  (1, 'john_doe', 'john@example.com', 30, 'New York', NULL),
  (2, 'jane_smith', 'jane@example.com', 25, 'Chicago', 'Ann'),
  (3, 'mike_brown', 'mike@example.com', 40, 'New York', NULL),
  (4, 'anna_jones', 'anna@example.com', 35, 'Los Angeles', 'Marie'),
  (5, 'paul_white', 'paul@example.com', 28, 'Chicago', NULL);

-- Create orders_1 table
CREATE TABLE orders_1 (
  id INT PRIMARY KEY,
  order_date DATE,
  amount DECIMAL(10,2),
  user_id INT -- to link to app_users_1 (optional FK for now)
);

-- Insert sample data into orders_1
INSERT INTO orders_1 (id, order_date, amount, user_id)
VALUES
  (1, '2023-02-15', 150.00, 1),
  (2, '2023-07-10', 200.00, 2),
  (3, '2023-05-05', 50.00, 3),
  (4, '2023-11-20', 300.00, 4),
  (5, '2023-01-25', 120.00, 5);

-- 1. Select users older than 30
SELECT * FROM app_users_1
WHERE age > 30;

-- 2. Select users living in Chicago
SELECT * FROM app_users_1
WHERE city = 'Chicago';

-- 3. Select users whose username starts with 'jane'
SELECT * FROM app_users_1
WHERE user_name LIKE 'jane%';

-- 4. Select orders with amount greater than 100
SELECT * FROM orders_1
WHERE amount > 100;

-- 5. Select orders between two dates
SELECT * FROM orders_1
WHERE order_date BETWEEN '2023-01-01' AND '2023-06-30';

-- 6. Select users with no middle name
SELECT * FROM app_users_1
WHERE middle_name IS NULL;

-- 7. Select users aged either 25, 28, or 35
SELECT * FROM app_users_1
WHERE age IN (25, 28, 35);

-- 8. Select users not living in New York
SELECT * FROM app_users_1
WHERE city <> 'New York';

-- 9. Combine conditions with AND
SELECT * FROM app_users_1
WHERE age > 25 AND city = 'Chicago';

-- 10. Combine conditions with OR
SELECT * FROM app_users_1
WHERE city = 'Los Angeles' OR city = 'New York';

-- 11. Copy table structure only (no data):

CREATE TABLE new_table
LIKE original_table; -- This creates new_table with the same columns, data types, indexes, but no rows.

-- 12. Copy table structure and data:

CREATE TABLE new_table AS
SELECT *
FROM original_table; -- This creates new_table with the same columns and copies all rows from original_table.
-- Note: This does NOT copy indexes or keys, just data and columns.

-- 13. Copy data only (insert into existing table):

INSERT INTO existing_table
SELECT *
FROM original_table; -- Use this if existing_table already exists and you want to fill it with data from original_table.