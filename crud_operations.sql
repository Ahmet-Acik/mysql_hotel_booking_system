-- Create: Insert a new guest
INSERT INTO Guests (name, email, phone, address) VALUES ('Alice Johnson', 'alice.johnson@example.com', '5551234567', '789 Pine St');

-- Read: Select all guests
SELECT * FROM Guests;

-- Update: Update a guest's information
UPDATE Guests SET phone = '5559876543' WHERE guest_id = 1;

-- Delete: Delete a guest
DELETE FROM Guests WHERE guest_id = 2;

-- Create: Insert a new room
INSERT INTO Rooms (room_number, type, price, availability) VALUES ('104', 'Single', 100.00, TRUE);

-- Read: Select all rooms
SELECT * FROM Rooms;

-- Update: Update a room's availability
UPDATE Rooms SET availability = FALSE WHERE room_id = 1;

-- Delete: Delete a room
DELETE FROM Rooms WHERE room_id = 3;

-- Create: Insert a new booking
INSERT INTO Bookings (guest_id, room_id, check_in_date, check_out_date, status) VALUES (1, 2, '2023-12-01', '2023-12-05', 'Confirmed');

-- Read: Select all bookings
SELECT * FROM Bookings;

-- Update: Update a booking's status
UPDATE Bookings SET status = 'Cancelled' WHERE booking_id = 1;

-- Delete: Delete a booking
DELETE FROM Bookings WHERE booking_id = 2;

-- Create: Insert a new payment
INSERT INTO Payments (booking_id, amount, payment_date, payment_method) VALUES (1, 400.00, '2023-12-01', 'Credit Card');

-- Read: Select all payments
SELECT * FROM Payments;

-- Update: Update a payment's amount
UPDATE Payments SET amount = 450.00 WHERE payment_id = 1;

-- Delete: Delete a payment
DELETE FROM Payments WHERE payment_id = 2;

-- Create: Insert a new service
INSERT INTO Services (name, description, price) VALUES ('Gym', 'Access to gym facilities', 30.00);

-- Read: Select all services
SELECT * FROM Services;

-- Update: Update a service's price
UPDATE Services SET price = 35.00 WHERE service_id = 1;

-- Delete: Delete a service
DELETE FROM Services WHERE service_id = 2;