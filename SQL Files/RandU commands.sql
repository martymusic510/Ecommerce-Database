-- Users Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all users
SELECT * FROM Users;

-- Retrieve users with a specific email domain
SELECT * FROM Users WHERE Email LIKE '%@example.com';

-- Count the number of users in a particular address
SELECT COUNT(*) FROM Users WHERE Address LIKE '%Main St%';

-- Retrieve users ordered by creation date
SELECT * FROM Users ORDER BY CreatedAt DESC;

-- Retrieve users whose names start with 'J'
SELECT * FROM Users WHERE Name LIKE 'J%';

-- Retrieve the most recent user
SELECT * FROM Users ORDER BY CreatedAt DESC LIMIT 1;

-- 2. Updation Queries:

-- Update a user's address
UPDATE Users SET Address = 'New Address' WHERE UserID = 1;

-- Update a user's phone number
UPDATE Users SET Phone = '999-999-9999' WHERE UserID = 2;

-- Update a user's email
UPDATE Users SET Email = 'newemail@example.com' WHERE UserID = 3;

-- Categories Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all categories
SELECT * FROM Categories;

-- Retrieve a specific category by name
SELECT * FROM Categories WHERE CategoryName = 'Electronics';

-- Count total categories
SELECT COUNT(*) FROM Categories;

-- Retrieve categories ordered alphabetically
SELECT * FROM Categories ORDER BY CategoryName;

-- 2. Updation Queries:

-- Update a category name
UPDATE Categories SET CategoryName = 'New Electronics' WHERE CategoryID = 1;

-- Products Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all products
SELECT * FROM Products;

-- Retrieve products in a specific category
SELECT * FROM Products WHERE CategoryID = 1;

-- Retrieve products with a price greater than a certain value
SELECT * FROM Products WHERE Price > 100.00;

-- Retrieve products ordered by price
SELECT * FROM Products ORDER BY Price DESC;

-- Retrieve products with stock less than a certain number
SELECT * FROM Products WHERE Stock < 10;

-- Retrieve products whose name contains 'Laptop'
SELECT * FROM Products WHERE Name LIKE '%Laptop%';

-- Retrieve the average price of products in each category
SELECT CategoryID, AVG(Price) FROM Products GROUP BY CategoryID;

-- 2. Updation Queries:

-- Update a product's price
UPDATE Products SET Price = 150.00 WHERE ProductID = 1;

-- Update a product's stock
UPDATE Products SET Stock = 100 WHERE ProductID = 2;

-- Update a product's description
UPDATE Products SET Description = 'New Description' WHERE ProductID = 3;

-- Orders Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all orders
SELECT * FROM Orders;

-- Retrieve orders for a specific user
SELECT * FROM Orders WHERE UserID = 1;

-- Retrieve orders with a specific status
SELECT * FROM Orders WHERE Status = 'Shipped';

-- Calculate the total amount of all orders
SELECT SUM(TotalAmount) FROM Orders;

-- Retrieve orders made in a specific date range
SELECT * FROM Orders WHERE OrderDate BETWEEN '2023-12-01' AND '2024-01-31';

-- Retrieve orders ordered by total amount
SELECT * FROM Orders ORDER BY TotalAmount DESC;

-- Retrieve the number of orders for each status
SELECT Status, COUNT(*) FROM Orders GROUP BY Status;

-- 2. Updation Queries:

-- Update an order's status
UPDATE Orders SET Status = 'Delivered' WHERE OrderID = 1;

-- Update an order's total amount
UPDATE Orders SET TotalAmount = 1300.00 WHERE OrderID = 2;

-- OrderDetails Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all order details
SELECT * FROM OrderDetails;

-- Retrieve order details for a specific order
SELECT * FROM OrderDetails WHERE OrderID = 1;

-- Calculate the total quantity of a product ordered
SELECT SUM(Quantity) FROM OrderDetails WHERE ProductID = 1;

-- Calculate the average subtotal for an order
SELECT AVG(Subtotal) FROM OrderDetails WHERE OrderID = 1;

-- Retrieve order details with quantity greater than 1
SELECT * from OrderDetails where Quantity > 1;

-- 2. Updation Queries:

-- Update the quantity of a product in an order detail
UPDATE OrderDetails SET Quantity = 2 WHERE OrderDetailID = 1;

-- Update the subtotal of an order detail
UPDATE OrderDetails SET Subtotal = 250.00 WHERE OrderDetailID = 2;

-- Payments Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all payments
SELECT * FROM Payments;

-- Retrieve payments for a specific order
SELECT * FROM Payments WHERE OrderID = 1;

-- Retrieve payments with a specific status
SELECT * FROM Payments WHERE PaymentStatus = 'Completed';

-- Calculate the total amount paid using a specific method
SELECT SUM(Amount) FROM Payments WHERE PaymentMethod = 'Credit Card';

-- Retrieve payments made in a specific date range
SELECT * FROM Payments WHERE PaymentDate BETWEEN '2023-12-01' AND '2024-01-31';

-- Retrieve payments ordered by amount
SELECT * FROM Payments ORDER BY Amount DESC;

-- Retrieve the number of payments for each payment method
SELECT PaymentMethod, COUNT(*) from Payments group by PaymentMethod;

-- 2. Updation Queries:

-- Update a payment's status
UPDATE Payments SET PaymentStatus = 'Completed' WHERE PaymentID = 1;

-- Reviews Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all reviews
SELECT * FROM Reviews;

-- Retrieve reviews for a specific product
SELECT * FROM Reviews WHERE ProductID = 1;

-- Calculate the average rating for a product
SELECT AVG(Rating) FROM Reviews WHERE ProductID = 1;

-- Retrieve reviews made by a specific user
SELECT * FROM Reviews WHERE UserID = 1;

-- Retrieve reviews with a rating greater than 3
SELECT * from Reviews where Rating > 3;

-- 2. Updation Queries:

-- Update a review's comment
UPDATE Reviews SET Comment = 'New Comment' WHERE ReviewID = 1;

-- Update a review's rating
UPDATE Reviews SET Rating = 5 WHERE ReviewID = 2;

-- Wishlist Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all wishlist items
SELECT * FROM Wishlist;

-- Retrieve wishlist items for a specific user
SELECT * FROM Wishlist WHERE UserID = 1;

-- Retrieve wishlist items for a specific product
SELECT * FROM Wishlist WHERE ProductID = 1;

-- Retrieve wishlist items ordered by creation date
SELECT * from Wishlist order by CreatedAt desc;

-- 2. Updation Queries:

-- No direct updates (items are added/removed).

-- Shipping Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all shipping records
SELECT * FROM Shipping;

-- Retrieve shipping records for a specific order
SELECT * FROM Shipping WHERE OrderID = 1;

-- Retrieve shipping records with a specific status
SELECT * FROM Shipping WHERE Status = 'Shipped';

-- Retrieve shipping records with a specific estimated delivery date
SELECT * FROM Shipping WHERE EstimatedDeliveryDate = '2023-12-28';

-- Retrieve shipping records ordered by shippingID
SELECT * from Shipping order by ShippingID;

-- 2. Updation Queries:

-- Update a shipping record's status
UPDATE Shipping SET Status = 'Delivered' WHERE ShippingID = 1;

-- Update a shipping record's tracking number
UPDATE Shipping SET TrackingNumber = 'NEWTRACKINGNUMBER' WHERE ShippingID = 2;

-- Update a shipping record's address
UPDATE Shipping SET ShippingAddress = 'New shipping address' WHERE ShippingID = 3;

-- Update a shipping record's estimated delivery date
UPDATE Shipping SET EstimatedDeliveryDate = '2024-02-01' WHERE ShippingID = 4;

-- Cart Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all cart items
SELECT * FROM Cart;

-- Retrieve cart items for a specific user
SELECT * FROM Cart WHERE UserID = 1;

-- Calculate the total quantity of a product in the cart
SELECT SUM(Quantity) FROM Cart WHERE ProductID = 1;

-- Retrieve cart items ordered by creation date
SELECT * from Cart order by CreatedAt desc;

-- 2. Updation Queries:

-- Update the quantity of a product in the cart
UPDATE Cart SET Quantity = 3 WHERE CartID = 1;

-- Admins Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all admins
SELECT * FROM Admins;

-- Retrieve admins with a specific role
SELECT * FROM Admins WHERE Role = 'SuperAdmin';

-- Count total admins
SELECT COUNT(*) FROM Admins;

-- Retrieve admins ordered by creation date
SELECT * from Admins order by CreatedAt desc;

-- 2. Updation Queries:

-- Update an admin's role
UPDATE Admins SET Role = 'Support' WHERE AdminID = 1;

-- Update an admin's password hash
UPDATE Admins SET PasswordHash = 'NEWHASH' WHERE AdminID = 2;

-- SupportTickets Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all support tickets
SELECT * FROM SupportTickets;

-- Retrieve support tickets for a specific user
SELECT * FROM SupportTickets WHERE UserID = 1;

-- Retrieve support tickets with a specific status
SELECT * FROM SupportTickets WHERE Status = 'Open';

-- Count total resolved support tickets
SELECT COUNT(*) FROM SupportTickets WHERE Status = 'Resolved';

-- Retrieve support tickets ordered by creation date
SELECT * from SupportTickets order by CreatedAt desc;

-- 2. Updation Queries:

-- Update a support ticket's status
UPDATE SupportTickets SET Status = 'Resolved' WHERE TicketID = 1;

-- Update a support ticket's issue description
UPDATE SupportTickets SET Issue = 'New Issue Description' WHERE TicketID = 2;

-- Refunds Table

-- 1. Retrieval and Analysis Queries:

-- Retrieve all refund records
SELECT * FROM Refunds;

-- Retrieve refund records for a specific order
SELECT * FROM Refunds WHERE OrderID = 1;

-- Retrieve refund records with a specific status
SELECT * FROM Refunds WHERE Status = 'Approved';

-- Calculate the total refund amount
SELECT SUM(RefundAmount) FROM Refunds;

-- Retrieve refunds ordered by refund amount
SELECT * from Refunds order by RefundAmount desc;

-- 2. Updation Queries:

-- Update a refund record's status
UPDATE Refunds SET Status = 'Approved' WHERE RefundID = 1;

-- Update a refund record's amount
UPDATE Refunds SET RefundAmount = 100 WHERE RefundID = 2;

-- Update a refund record's reason
UPDATE Refunds SET Reason = 'New Refund Reason' WHERE RefundID = 3;

-- Analysis Queries with Joins on EcommerceDatabase

-- 1. Users and Orders:
-- Retrieve users and their corresponding order counts
SELECT u.UserID, u.Name, COUNT(o.OrderID) AS OrderCount
FROM Users u
LEFT JOIN Orders o ON u.UserID = o.UserID
GROUP BY u.UserID, u.Name;

-- Retrieve users who have placed orders with a total amount greater than $100
SELECT u.UserID, u.Name
FROM Users u
JOIN Orders o ON u.UserID = o.UserID
WHERE o.TotalAmount > 100.00
GROUP BY u.UserID, u.Name;

-- 2. Products and Categories:
-- Retrieve products and their category names
SELECT p.ProductID, p.Name AS ProductName, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID;

-- Retrieve the number of products in each category
SELECT c.CategoryName, COUNT(p.ProductID) AS ProductCount
FROM Categories c
LEFT JOIN Products p ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryName;

-- 3. Orders and OrderDetails:
-- Retrieve orders and their corresponding order details (product names and quantities)
SELECT o.OrderID, p.Name AS ProductName, od.Quantity
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;

-- Calculate the total revenue for each order
SELECT o.OrderID, SUM(od.Subtotal) AS TotalRevenue
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
GROUP BY o.OrderID;

-- 4. Orders and Payments:
-- Retrieve orders and their payment statuses
SELECT o.OrderID, p.PaymentStatus
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID;

-- Calculate the total amount paid for each order
SELECT o.OrderID, SUM(p.Amount) AS TotalPaid
FROM Orders o
JOIN Payments p ON o.OrderID = p.OrderID
GROUP BY o.OrderID;

-- 5. Products and Reviews:
-- Retrieve products and their average ratings
SELECT p.ProductID, p.Name AS ProductName, AVG(r.Rating) AS AverageRating
FROM Products p
LEFT JOIN Reviews r ON p.ProductID = r.ProductID
GROUP BY p.ProductID, p.Name;

-- Retrieve products with reviews that have a rating greater than 3
SELECT p.ProductID, p.Name AS ProductName
FROM Products p
JOIN Reviews r ON p.ProductID = r.ProductID
WHERE r.Rating > 3;

-- 6. Users and Reviews:
-- Retrieve Users and the reviews they have written.
SELECT u.Name, r.Comment, p.Name FROM Users u
JOIN Reviews r on u.UserID = r.UserID
JOIN Products p on r.ProductID = p.ProductID;

-- 7. Orders and Shipping:
-- Retrieve orders and their shipping status
SELECT o.OrderID, s.Status AS ShippingStatus
FROM Orders o
JOIN Shipping s ON o.OrderID = s.OrderID;

-- 8. Users and Cart:
-- Retrieve users and the number of items in their cart
SELECT u.UserID, u.Name, SUM(c.Quantity) AS CartItemCount
FROM Users u
LEFT JOIN Cart c ON u.UserID = c.UserID
GROUP BY u.UserID, u.Name;

-- 9. Users and Support Tickets:
-- Retrieve users and the number of support tickets they have opened.
SELECT u.UserID, u.Name, COUNT(st.TicketID) AS SupportTicketCount
FROM Users u
LEFT JOIN SupportTickets st ON u.UserID = st.UserID
GROUP BY u.UserID, u.Name;

-- 10. Orders and Refunds:
-- Retrieve Orders and the refund amount if any.
SELECT o.OrderID, r.RefundAmount from Orders o
LEFT JOIN Refunds r on o.OrderID = r.OrderID;

-- 11. Products and Wishlist:
-- Retrieve Products and the number of users that have added it to their wishlist.
SELECT p.Name, count(w.UserID) as WishListCount from Products p
LEFT JOIN Wishlist w on p.ProductID = w.ProductID
GROUP BY p.Name;

-- 12. Users, Orders and OrderDetails:
-- Retrieve User name, OrderID, Product Names, Quantity and Subtotal.
SELECT u.Name, o.OrderID, p.Name as ProductName, od.Quantity, od.Subtotal from Users u
JOIN Orders o on u.UserID = o.UserID
JOIN OrderDetails od on o.OrderID = od.OrderID
JOIN Products p on od.ProductID = p.ProductID;