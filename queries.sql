-- Query: Get all bookings for a specific guest
SELECT * FROM Bookings WHERE guest_id = 1;

-- Query: Get all payments for a specific booking
SELECT * FROM Payments WHERE booking_id = 1;

-- Query: Get all rooms that are available
SELECT * FROM Rooms WHERE availability = TRUE;

-- Query: Get all services offered by the hotel
SELECT * FROM Services;

-- Query: Get the total amount spent by a specific guest
SELECT SUM(amount) AS total_spent FROM Payments WHERE booking_id IN (SELECT booking_id FROM Bookings WHERE guest_id = 1);

-- Query: Get the total amount spent by all guests
SELECT SUM(amount) AS total_revenue FROM Payments;

-- Query: Get the total number of bookings
SELECT COUNT(booking_id) AS total_bookings FROM Bookings;

-- Query: Get the total number of bookings for a specific room type
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE room_id IN (SELECT room_id FROM Rooms WHERE type = 'Single');

-- Query: Get the total number of bookings for a specific date range
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE check_in_date BETWEEN '2023-12-01' AND '2023-12-31';

-- Query: Get the total number of bookings for a specific status
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE status = 'Confirmed';

-- Query: Get the total number of bookings for a specific guest
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE guest_id = 1;

-- Query: Get the total number of bookings for a specific room
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE room_id = 1;

-- Query: Get the total number of bookings for a specific payment method
SELECT COUNT(booking_id) AS total_bookings FROM Payments WHERE payment_method = 'Credit Card';

-- Query: Get the total number of bookings for a specific service
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE booking_id IN (SELECT booking_id FROM Payments WHERE payment_method = 'Credit Card');

-- Query: Get the total number of bookings for a specific guest
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE guest_id = 4;

-- Query: Get the total number of bookings for a specific room
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE room_id = 5;

-- Query: Get the total number of bookings for a specific payment method
SELECT COUNT(booking_id) AS total_bookings FROM Payments WHERE payment_method = 'Cash';

-- Query: Get the total number of bookings for a specific service
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE booking_id IN (SELECT booking_id FROM Payments WHERE payment_method = 'Cash');

-- Query: Get the total number of bookings for a specific guest
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE guest_id = 2;

-- Query: Get the total number of bookings for a specific room
SELECT COUNT(booking_id) AS total_bookings FROM Bookings WHERE room_id = 3;


-- complex queries
-- Query: Get all bookings with guest, room, payment, and service details for a specific service
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status, p.amount,
p.payment_date, p.payment_method, s.name AS service_name, s.price AS service_price
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
JOIN Payments p ON b.booking_id = p.booking_id
JOIN Services s ON b.booking_id = s.service_id
WHERE s.service_id = 1;

-- Query: Get all bookings with guest, room, payment, and service details for a specific date range
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status, p.amount,
p.payment_date, p.payment_method, s.name AS service_name, s.price AS service_price
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
JOIN Payments p ON b.booking_id = p.booking_id
JOIN Services s ON b.booking_id = s.service_id
WHERE b.check_in_date BETWEEN '2023-12-01' AND '2023-12-31';

-- Query: Get all bookings with guest, room, payment, and service details for a specific status
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status, p.amount,
p.payment_date, p.payment_method, s.name AS service_name, s.price AS service_price
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
JOIN Payments p ON b.booking_id = p.booking_id
JOIN Services s ON b.booking_id = s.service_id
WHERE b.status = 'Confirmed';
