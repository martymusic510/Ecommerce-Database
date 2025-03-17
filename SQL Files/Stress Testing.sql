-- Stresstesting for 1NF (1st Normal Form)
-- To check if a table follows First Normal Form (1NF) in SQL, you need to ensure that:
-- 1. Each column contains atomic values (no multiple values in a single column).
-- 2. Each row has a unique identifier (a primary key is defined).
-- 3. All columns store only single-valued attributes (no repeating groups or arrays).

-- Stress Testing for Multi-Valued Attributes in EcommerceDatabase (Including all tables)

-- Users Table
SELECT * FROM Users
WHERE Phone LIKE '%,%'
   OR Email LIKE '%,%'
   OR Address LIKE '%,%';

-- Categories Table
SELECT * FROM Categories
WHERE CategoryName LIKE '%,%';

-- Products Table
SELECT * FROM Products
WHERE Description LIKE '%,%'
   OR Name LIKE '%,%';

-- Orders Table
SELECT * FROM Orders
WHERE Status LIKE '%,%';

-- OrderDetails Table
SELECT * FROM OrderDetails
WHERE Quantity LIKE '%,%'
   OR Subtotal LIKE '%,%';

-- Payments Table
SELECT * FROM Payments
WHERE PaymentMethod LIKE '%,%'
   OR PaymentStatus LIKE '%,%';

-- Reviews Table
SELECT * FROM Reviews
WHERE Comment LIKE '%,%';

-- Wishlist Table
-- (Checking for comma-separated UserID or ProductID, though highly unlikely)
SELECT * FROM Wishlist
WHERE UserID LIKE '%,%'
   OR ProductID LIKE '%,%';

-- Shipping Table
SELECT * FROM Shipping
WHERE ShippingAddress LIKE '%,%'
   OR TrackingNumber LIKE '%,%'
   OR Status LIKE '%,%';

-- Cart Table
-- (Checking for comma-separated UserID or ProductID, though highly unlikely)
SELECT * FROM Cart
WHERE UserID LIKE '%,%'
   OR ProductID LIKE '%,%';

-- Admins Table
SELECT * FROM Admins
WHERE Role LIKE '%,%'
   OR Email LIKE '%,%';

-- SupportTickets Table
SELECT * FROM SupportTickets
WHERE Issue LIKE '%,%'
   OR Status LIKE '%,%';

-- Refunds Table
SELECT * FROM Refunds
WHERE Reason LIKE '%,%'
   OR Status LIKE '%,%';
   
-- no column in any table contains multiple values separated by comma, so, 1NF is not violated.   
-- Check for Missing Primary Keys in EcommerceDatabase

SELECT TABLE_NAME
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'EcommerceDatabase'
AND TABLE_NAME NOT IN (
    SELECT DISTINCT TABLE_NAME
    FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
    WHERE CONSTRAINT_NAME = 'PRIMARY'
);

-- There are no tables with missing primary keys, so, 1NF is not violated.

-- Check for Repeating Groups in EcommerceDatabase

SELECT COLUMN_NAME, TABLE_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'EcommerceDatabase'
AND COLUMN_NAME REGEXP '_[0-9]$';

-- As no column names end with _1, _2, _3, etc., 1NF is not violated.

-- As, all checks for 1NF found that, 1NF is not violated, hence we can conclude that our database is 1NF compliant.