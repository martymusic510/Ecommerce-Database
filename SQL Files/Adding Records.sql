USE EcommerceDatabase;

-- Insert 20 random records into Users table
INSERT INTO Users (Name, Email, Phone, Address) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', '123 Main St'),
('Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Oak Ave'),
('Alice Johnson', 'alice.johnson@example.com', '555-123-4567', '789 Pine Ln'),
('Bob Williams', 'bob.williams@example.com', '111-222-3333', '101 Elm Rd'),
('Charlie Brown', 'charlie.brown@example.com', '444-555-6666', '202 Maple Dr'),
('David Lee', 'david.lee@example.com', '777-888-9999', '303 Birch Ct'),
('Eve Wilson', 'eve.wilson@example.com', '222-333-4444', '404 Cedar Pl'),
('Frank Miller', 'frank.miller@example.com', '666-777-8888', '505 Redwood St'),
('Grace Davis', 'grace.davis@example.com', '333-444-5555', '606 Willow Ave'),
('Henry Garcia', 'henry.garcia@example.com', '888-999-0000', '707 Spruce Ln'),
('Ivy Rodriguez', 'ivy.rodriguez@example.com', '999-000-1111', '808 Cherry Rd'),
('Jack Martinez', 'jack.martinez@example.com', '000-111-2222', '909 Pinecone Dr'),
('Kelly Anderson', 'kelly.anderson@example.com', '111-333-5555', '1001 Oakwood Ct'),
('Liam Thomas', 'liam.thomas@example.com', '222-444-6666', '1101 Mapleleaf Pl'),
('Mia Jackson', 'mia.jackson@example.com', '333-555-7777', '1201 Birchbark St'),
('Noah White', 'noah.white@example.com', '444-666-8888', '1301 Cedarwood Ave'),
('Olivia Harris', 'olivia.harris@example.com', '555-777-9999', '1401 Redwood Ln'),
('Peter Martin', 'peter.martin@example.com', '666-888-0000', '1501 Willowbrook Rd'),
('Quinn Thompson', 'quinn.thompson@example.com', '777-999-1111', '1601 Sprucetop Dr'),
('Ryan Garcia', 'ryan.garcia2@example.com', '888-000-2222', '1701 Cherrytree Ct');

-- Insert 20 random records into Categories table
INSERT INTO Categories (CategoryName) VALUES
('Electronics'), ('Clothing'), ('Books'), ('Home & Kitchen'), ('Sports & Outdoors'),
('Toys & Games'), ('Beauty & Personal Care'), ('Automotive'), ('Groceries'), ('Health & Household'),
('Jewelry'), ('Shoes'), ('Luggage & Travel Gear'), ('Office Products'), ('Pet Supplies'),
('Video Games'), ('Musical Instruments'), ('Arts & Crafts'), ('Baby Products'), ('Industrial & Scientific');

-- Insert 20 random records into Products table
INSERT INTO Products (Name, Description, Price, Stock, CategoryID) VALUES
('Laptop', 'High-performance laptop', 1200.00, 50, 1),
('T-Shirt', 'Cotton t-shirt', 25.00, 200, 2),
('Novel', 'Fiction novel', 15.00, 100, 3),
('Blender', 'Kitchen blender', 50.00, 75, 4),
('Basketball', 'Outdoor basketball', 30.00, 150, 5),
('Board Game', 'Family board game', 40.00, 80, 6),
('Shampoo', 'Hair shampoo', 10.00, 300, 7),
('Car Battery', 'Automotive battery', 80.00, 60, 8),
('Pasta', 'Italian pasta', 5.00, 500, 9),
('Vitamins', 'Daily vitamins', 20.00, 250, 10),
('Necklace', 'Silver necklace', 75.00, 40, 11),
('Running Shoes', 'Athletic running shoes', 60.00, 120, 12),
('Suitcase', 'Travel suitcase', 100.00, 90, 13),
('Printer', 'Office printer', 150.00, 70, 14),
('Dog Food', 'Dry dog food', 35.00, 180, 15),
('Console', 'Gaming console', 300.00, 55, 16),
('Guitar', 'Acoustic guitar', 200.00, 45, 17),
('Paint Set', 'Art paint set', 45.00, 110, 18),
('Baby Stroller', 'Infant stroller', 120.00, 65, 19),
('Lab Equipment', 'Scientific lab equipment', 250.00, 30, 20);

-- Insert 20 random records into Orders table
INSERT INTO Orders (UserID, Status, TotalAmount) VALUES
(1, 'Delivered', 1250.00), (2, 'Shipped', 30.00), (3, 'Pending', 15.00), (4, 'Delivered', 50.00), (5, 'Shipped', 30.00),
(6, 'Pending', 40.00), (7, 'Delivered', 10.00), (8, 'Shipped', 80.00), (9, 'Pending', 5.00), (10, 'Delivered', 20.00),
(11, 'Shipped', 75.00), (12, 'Pending', 60.00), (13, 'Delivered', 100.00), (14, 'Shipped', 150.00), (15, 'Pending', 35.00),
(16, 'Delivered', 300.00), (17, 'Shipped', 200.00), (18, 'Pending', 45.00), (19, 'Delivered', 120.00), (20, 'Shipped', 250.00);

-- Insert 20 random records into OrderDetails table
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Subtotal) VALUES
(1, 1, 1, 1200.00),
(2, 2, 3, 75.00),
(3, 3, 2, 30.00),
(4, 4, 1, 50.00),
(5, 5, 4, 120.00),
(6, 6, 2, 80.00),
(7, 7, 5, 50.00),
(8, 8, 1, 80.00),
(9, 9, 10, 50.00),
(10, 10, 2, 40.00),
(11, 11, 1, 75.00),
(12, 12, 3, 180.00),
(13, 13, 1, 100.00),
(14, 14, 2, 300.00),
(15, 15, 1, 35.00),
(16, 16, 1, 300.00),
(17, 17, 2, 400.00),
(18, 18, 3, 135.00),
(19, 19, 1, 120.00),
(20, 20, 2, 500.00);

-- Insert 20 random records into Payments table
INSERT INTO Payments (OrderID, PaymentMethod, PaymentStatus, Amount) VALUES
(1, 'Credit Card', 'Completed', 1250.00), (2, 'PayPal', 'Completed', 30.00), (3, 'Debit Card', 'Pending', 15.00), (4, 'Credit Card', 'Completed', 50.00), (5, 'PayPal', 'Completed', 30.00),
(6, 'Bank Transfer', 'Pending', 40.00), (7, 'Credit Card', 'Completed', 10.00), (8, 'PayPal', 'Completed', 80.00), (9, 'Debit Card', 'Pending', 5.00), (10, 'Credit Card', 'Completed', 20.00),
(11, 'PayPal', 'Completed', 75.00), (12, 'Bank Transfer', 'Pending', 60.00), (13, 'Credit Card', 'Completed', 100.00), (14, 'PayPal', 'Completed', 150.00), (15, 'Debit Card', 'Pending', 35.00),
(16, 'Credit Card', 'Completed', 300.00), (17, 'PayPal', 'Completed', 200.00), (18, 'Bank Transfer', 'Pending', 45.00), (19, 'Credit Card', 'Completed', 120.00), (20, 'PayPal', 'Completed', 250.00);

-- Insert 20 random records into Reviews table
INSERT INTO Reviews (UserID, ProductID, Rating, Comment) VALUES
(1, 1, 5, 'Great laptop!'), (2, 2, 4, 'Nice t-shirt.'), (3, 3, 3, 'Decent novel.'), (4, 4, 5, 'Powerful blender.'), (5, 5, 4, 'Good basketball.'),
(6, 6, 3, 'Fun board game.'), (7, 7, 5, 'Effective shampoo.'), (8, 8, 4, 'Reliable battery.'), (9, 9, 3, 'Tasty pasta.'), (10, 10, 5, 'Helpful vitamins.'),
(11, 11, 4, 'Beautiful necklace.'), (12, 12, 3, 'Comfortable shoes.'), (13, 13, 5, 'Durable suitcase.'), (14, 14, 4, 'Efficient printer.'), (15, 15, 3, 'Quality dog food.'),
(16, 16, 5, 'Awesome console!'), (17, 17, 4, 'Great guitar.'), (18, 18, 3, 'Nice paint set.'), (19, 19, 5, 'Practical stroller.'), (20, 20, 4, 'Useful lab equipment.');


-- Insert 20 random records into Wishlist table
INSERT INTO Wishlist (UserID, ProductID) VALUES
(1, 2), (2, 3), (3, 4), (4, 5), (5, 6),
(6, 7), (7, 8), (8, 9), (9, 10), (10, 11),
(11, 12), (12, 13), (13, 14), (14, 15), (15, 16),
(16, 17), (17, 18), (18, 19), (19, 20), (20, 1),
(1, 5), (2, 8);

-- Insert 20 random records into Shipping table
INSERT INTO Shipping (OrderID, ShippingAddress, TrackingNumber, Status, EstimatedDeliveryDate) VALUES
(1, '123 Main St', 'TN12345', 'Delivered', '2023-12-28'), (2, '456 Oak Ave', 'TN67890', 'Shipped', '2023-12-29'), (3, '789 Pine Ln', 'TN11223', 'Pending', '2023-12-30'), (4, '101 Elm Rd', 'TN44556', 'Delivered', '2023-12-31'), (5, '202 Maple Dr', 'TN77889', 'Shipped', '2024-01-01'),
(6, '303 Birch Ct', 'TN99001', 'Pending', '2024-01-02'), (7, '404 Cedar Pl', 'TN22334', 'Delivered', '2024-01-03'), (8, '505 Redwood St', 'TN55667', 'Shipped', '2024-01-04'), (9, '606 Willow Ave', 'TN88990', 'Pending', '2024-01-05'), (10, '707 Spruce Ln', 'TN11221', 'Delivered', '2024-01-06'),
(11, '808 Cherry Rd', 'TN33445', 'Shipped', '2024-01-07'), (12, '909 Pinecone Dr', 'TN66778', 'Pending', '2024-01-08'), (13, '1001 Oakwood Ct', 'TN99009', 'Delivered', '2024-01-09'), (14, '1101 Mapleleaf Pl', 'TN22330', 'Shipped', '2024-01-10'), (15, '1201 Birchbark St', 'TN44551', 'Pending', '2024-01-11'),
(16, '1301 Cedarwood Ave', 'TN77882', 'Delivered', '2024-01-12'), (17, '1401 Redwood Ln', 'TN00112', 'Shipped', '2024-01-13'), (18, '1501 Willowbrook Rd', 'TN33443', 'Pending', '2024-01-14'), (19, '1601 Sprucetop Dr', 'TN66774', 'Delivered', '2024-01-15'), (20, '1701 Cherrytree Ct', 'TN99005', 'Shipped', '2024-01-16');

-- Insert 20 random records into Cart table
INSERT INTO Cart (UserID, ProductID, Quantity) VALUES
(1, 1, 1), (2, 2, 2), (3, 3, 1), (4, 4, 3), (5, 5, 1),
(6, 6, 2), (7, 7, 1), (8, 8, 3), (9, 9, 1), (10, 10, 2),
(11, 11, 1), (12, 12, 3), (13, 13, 1), (14, 14, 2), (15, 15, 1),
(16, 16, 3), (17, 17, 1), (18, 18, 2), (19, 19, 1), (20, 20, 3),
(1, 3, 2), (5, 7, 1);

-- Insert 20 random records into Admins table
INSERT INTO Admins (Name, Email, PasswordHash, Role) VALUES
('Admin One', 'admin1@example.com', 'hashed_password_1', 'SuperAdmin'),
('Admin Two', 'admin2@example.com', 'hashed_password_2', 'Manager'),
('Admin Three', 'admin3@example.com', 'hashed_password_3', 'Support'),
('Admin Four', 'admin4@example.com', 'hashed_password_4', 'Manager'),
('Admin Five', 'admin5@example.com', 'hashed_password_5', 'Support'),
('Admin Six', 'admin6@example.com', 'hashed_password_6', 'Manager'),
('Admin Seven', 'admin7@example.com', 'hashed_password_7', 'Support'),
('Admin Eight', 'admin8@example.com', 'hashed_password_8', 'Manager'),
('Admin Nine', 'admin9@example.com', 'hashed_password_9', 'Support'),
('Admin Ten', 'admin10@example.com', 'hashed_password_10', 'Manager'),
('Admin Eleven', 'admin11@example.com', 'hashed_password_11', 'Support'),
('Admin Twelve', 'admin12@example.com', 'hashed_password_12', 'Manager'),
('Admin Thirteen', 'admin13@example.com', 'hashed_password_13', 'Support'),
('Admin Fourteen', 'admin14@example.com', 'hashed_password_14', 'Manager'),
('Admin Fifteen', 'admin15@example.com', 'hashed_password_15', 'Support'),
('Admin Sixteen', 'admin16@example.com', 'hashed_password_16', 'Manager'),
('Admin Seventeen', 'admin17@example.com', 'hashed_password_17', 'Support'),
('Admin Eighteen', 'admin18@example.com', 'hashed_password_18', 'Manager'),
('Admin Nineteen', 'admin19@example.com', 'hashed_password_19', 'Support'),
('Admin Twenty', 'admin20@example.com', 'hashed_password_20', 'Manager');

-- Insert 20 random records into SupportTickets table
INSERT INTO SupportTickets (UserID, Issue, Status) VALUES
(1, 'Order not received', 'Open'), (2, 'Product damaged', 'In Progress'), (3, 'Payment issue', 'Resolved'), (4, 'Return request', 'Open'), (5, 'Shipping delay', 'In Progress'),
(6, 'Account problem', 'Resolved'), (7, 'Coupon not working', 'Open'), (8, 'Product inquiry', 'In Progress'), (9, 'Refund request', 'Resolved'), (10, 'Technical issue', 'Open'),
(11, 'Order cancellation', 'In Progress'), (12, 'Address change', 'Resolved'), (13, 'Feedback submission', 'Open'), (14, 'Subscription issue', 'In Progress'), (15, 'Warranty claim', 'Resolved'),
(16, 'Product comparison', 'Open'), (17, 'Gift card issue', 'In Progress'), (18, 'Loyalty program', 'Resolved'), (19, 'Bulk order', 'Open'), (20, 'Partnership inquiry', 'In Progress');

-- Insert 20 random records into Refunds table
INSERT INTO Refunds (OrderID, Reason, Status, RefundAmount) VALUES
(1, 'Damaged product', 'Approved', 1200.00), (2, 'Wrong item', 'Pending', 30.00), (3, 'Changed mind', 'Rejected', 0.00), (4, 'Defective product', 'Approved', 50.00), (5, 'Late delivery', 'Pending', 30.00),
(6, 'Not as described', 'Rejected', 0.00), (7, 'Unwanted item', 'Approved', 10.00), (8, 'Incorrect quantity', 'Pending', 80.00), (9, 'Poor quality', 'Rejected', 0.00), (10, 'Duplicate order', 'Approved', 20.00),
(11, 'Cancelled order', 'Pending', 75.00), (12, 'Lost in transit', 'Rejected', 0.00), (13, 'Customer request', 'Approved', 100.00), (14, 'Technical error', 'Pending', 150.00), (15, 'Billing issue', 'Rejected', 0.00),
(16, 'Fraudulent activity', 'Approved', 300.00), (17, 'Return processing', 'Pending', 200.00), (18, 'Shipping error', 'Rejected', 0.00), (19, 'Customer dissatisfaction', 'Approved', 120.00), (20, 'System malfunction', 'Pending', 250.00);
