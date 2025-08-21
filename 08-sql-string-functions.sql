-- Single Function Examples
SELECT UPPER('hello world') AS UpperCase;
SELECT LOWER('HELLO WORLD') AS LowerCase;
SELECT LEN('Data Analytics') AS StringLength;
SELECT LTRIM('   Trim Left') AS TrimLeft;
SELECT RTRIM('Trim Right   ') AS TrimRight;

-- Multi Function Example
SELECT CONCAT(FirstName, ' ', LastName) AS FullName
FROM Employees;

-- Replace Example
SELECT REPLACE('2025-08-21', '-', '/') AS NewFormat;

-- Extraction Examples
SELECT LEFT('Analytics', 4) AS ExtractLeft;   -- Ana
SELECT RIGHT('Analytics', 3) AS ExtractRight; -- tics
SELECT SUBSTRING('Analytics', 2, 5) AS ExtractSubstring; -- naly

-- Nested Function Example
SELECT UPPER(SUBSTRING('hello world', 1, 5)) AS NestedExample;  -- HELLO