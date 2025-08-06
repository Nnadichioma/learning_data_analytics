-- Alter table: add a new column
ALTER TABLE users
ADD age INT;

-- Rename a column (MySQL syntax)
ALTER TABLE users
CHANGE username user_name VARCHAR(100);

-- Change column datatype
ALTER TABLE users
MODIFY age SMALLINT;

-- Rename a table
RENAME TABLE users TO app_users;

-- Insert data into app_users
INSERT INTO app_users (id, user_name, email, age)
VALUES (1, 'john_doe', 'johndoe@gmail.com', 30),
	   (2, 'dayo_jackson', 'dayojackson@gmail.com', 50);

-- Update data in app_users
-- IMPORTANT: Use WHERE to avoid updating all rows
UPDATE app_users
SET email = 'john_new@example.com'
WHERE id = 1;

-- Delete a user
-- IMPORTANT: Use WHERE to avoid deleting all rows
DELETE FROM app_users
WHERE id = 1;

-- Truncate app_users table (removes all rows)
TRUNCATE TABLE app_users;

-- Drop the orders table if it exists
DROP TABLE IF EXISTS orders;
