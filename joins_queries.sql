-- joins
-- Query: Get all bookings with guest details
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- Query: Get all payments with booking details
SELECT p.payment_id, b.booking_id, g.name AS guest_name, p.amount, p.payment_date, p.payment_method
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id
JOIN Guests g ON b.guest_id = g.guest_id;

-- Query: Get all bookings with guest and room details
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id;

-- Query: Get all payments with booking and guest details
SELECT p.payment_id, g.name AS guest_name, p.amount, p.payment_date, p.payment_method
FROM Payments p
JOIN Bookings b ON p.booking_id = b.booking_id
JOIN Guests g ON b.guest_id = g.guest_id;

-- Query: Get all bookings with guest, room, and payment details
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status, p.amount, p.payment_date, p.payment_method
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
JOIN Payments p ON b.booking_id = p.booking_id;

-- Query: Get all bookings with guest, room, payment, and service details
SELECT b.booking_id, g.name AS guest_name, r.room_number, r.type AS room_type, b.check_in_date, b.check_out_date, b.status, p.amount, p.payment_date, p.payment_method, s.name AS service_name, s.price AS service_price
FROM Bookings b
JOIN Guests g ON b.guest_id = g.guest_id
JOIN Rooms r ON b.room_id = r.room_id
JOIN Payments p ON b.booking_id = p.booking_id
JOIN Services s ON b.booking_id = s.service_id;
