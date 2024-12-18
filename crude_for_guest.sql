-- Create: Insert a new guest if not exists
INSERT INTO Guests (name, email, phone, address) 
SELECT 'Chris Taylor', 'chris.taylor@example.com', '5554567890', '123 Oak St'
WHERE NOT EXISTS (
    SELECT 1 FROM Guests WHERE email = 'chris.taylor@example.com'
);

-- Read: Select all guests, ordered by name
SELECT guest_id, name, email, phone, address 
FROM Guests 
ORDER BY name;

-- Update: Update a guest's phone number and address
UPDATE Guests 
SET phone = '5552223333', address = '567 Maple St' 
WHERE guest_id = (SELECT guest_id FROM Guests ORDER BY guest_id LIMIT 1);

-- Delete: Delete a guest by email to prevent accidental deletion by ID
DELETE FROM Guests 
WHERE email = (SELECT email FROM Guests ORDER BY guest_id LIMIT 1);

-- Create: Insert a new room if not exists
INSERT INTO Rooms (room_number, type, price, availability) 
SELECT '111', 'Suite', 400.00, TRUE
WHERE NOT EXISTS (
    SELECT 1 FROM Rooms WHERE room_number = '111'
);

-- Read: Select all rooms, ordered by room number
SELECT room_id, room_number, type, price, availability 
FROM Rooms 
ORDER BY room_number;

-- Update: Update room availability and price
UPDATE Rooms 
SET availability = FALSE, price = 120.00 
WHERE room_id = (SELECT room_id FROM Rooms ORDER BY room_id LIMIT 1);

-- Delete: Delete a room by room number for clarity
DELETE FROM Rooms 
WHERE room_number = (SELECT room_number FROM Rooms ORDER BY room_id LIMIT 1);

-- Create: Insert a new booking if not exists
INSERT INTO Bookings (guest_id, room_id, check_in_date, check_out_date, status) 
SELECT 4, 5, '2024-01-15', '2024-01-20', 'Confirmed'
WHERE NOT EXISTS (
    SELECT 1 FROM Bookings WHERE guest_id = 4 AND room_id = 5 AND check_in_date = '2024-01-15'
);

-- Read: Select all bookings with guest and room details
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, 
       b.check_in_date, b.check_out_date, b.status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
ORDER BY b.check_in_date;

-- Update: Update a booking's status to 'Checked Out'
UPDATE Bookings 
SET status = 'Checked Out' 
WHERE booking_id = (SELECT booking_id FROM Bookings ORDER BY booking_id LIMIT 1);

-- Delete: Delete a booking by checking guest and room ID
DELETE FROM Bookings 
WHERE guest_id = (SELECT guest_id FROM Guests ORDER BY guest_id LIMIT 1) AND room_id = (SELECT room_id FROM Rooms ORDER BY room_id LIMIT 1);

-- Create: Insert a new payment if not exists
INSERT INTO Payments (booking_id, amount, payment_date, payment_method) 
SELECT 3, 500.00, '2023-12-25', 'Cash'
WHERE NOT EXISTS (
    SELECT 1 FROM Payments WHERE booking_id = 3 AND payment_date = '2023-12-25'
);

-- Read: Select all payments with booking and guest details
SELECT p.payment_id, g.name AS guest_name, p.amount, p.payment_date, p.payment_method
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id
JOIN Guests g ON b.guest_id = g.guest_id
ORDER BY p.payment_date;

-- Update: Update a payment's method and amount
UPDATE Payments 
SET payment_method = 'Debit Card', amount = 525.00 
WHERE payment_id = (SELECT payment_id FROM Payments ORDER BY payment_id LIMIT 1);

-- Delete: Delete a payment by ensuring the related booking ID matches
DELETE FROM Payments 
WHERE booking_id = (SELECT booking_id FROM Bookings ORDER BY booking_id LIMIT 1);

-- Create: Insert a new service if not exists
INSERT INTO Services (name, description, price) 
SELECT 'Premium Breakfast', 'Upgraded breakfast options', 25.00
WHERE NOT EXISTS (
    SELECT 1 FROM Services WHERE name = 'Premium Breakfast'
);

-- Read: Select all services, ordered by price descending
SELECT service_id, name, description, price 
FROM Services 
ORDER BY price DESC;

-- Update: Update a service's description and price
UPDATE Services 
SET description = '24/7 gym access', price = 40.00 
WHERE service_id = (SELECT service_id FROM Services ORDER BY service_id LIMIT 1);

-- Delete: Delete a service by name to avoid ID-specific deletions
DELETE FROM Services 
WHERE name = (SELECT name FROM Services ORDER BY service_id LIMIT 1);

