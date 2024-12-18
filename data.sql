-- Insert sample data into Guests table
INSERT INTO Guests (name, email, phone, address) VALUES
('John Doe', 'john.doe@example.com', '1234567890', '123 Main St'),
('Jane Smith', 'jane.smith@example.com', '0987654321', '456 Elm St'),
('Alice Johnson', 'alice.johnson@example.com', '1112223333', '789 Pine St'),
('Bob Brown', 'bob.brown@example.com', '4445556666', '321 Oak St'),
('Charlie Davis', 'charlie.davis@example.com', '7778889999', '654 Maple Ave'),
('Diana Evans', 'diana.evans@example.com', '5554443333', '987 Cedar Ln'),
('Edward Wilson', 'edward.wilson@example.com', '9998887777', '159 Birch Rd'),
('Fiona Green', 'fiona.green@example.com', '6665554444', '753 Willow Dr'),
('George Harris', 'george.harris@example.com', '3332221111', '852 Spruce St'),
('Hannah White', 'hannah.white@example.com', '2221110000', '951 Redwood Ct'),
('Ian Martinez', 'ian.martinez@example.com', '0009998888', '357 Chestnut Blvd'),
('Julia Thompson', 'julia.thompson@example.com', '8887776666', '468 Sycamore Way'),
('Kyle Brown', 'kyle.brown@example.com', '1113335555', '579 Fir Ave'),
('Laura Lopez', 'laura.lopez@example.com', '2224446666', '681 Aspen Rd'),
('Michael Scott', 'michael.scott@example.com', '3335557777', '792 Juniper Dr'),
('Nina Perez', 'nina.perez@example.com', '4446668888', '894 Beech St'),
('Oscar Reed', 'oscar.reed@example.com', '5557779999', '135 Sequoia Ct'),
('Paula Lewis', 'paula.lewis@example.com', '6668880000', '246 Poplar Ln'),
('Quinn Carter', 'quinn.carter@example.com', '7779991111', '357 Magnolia St'),
('Rachel Adams', 'rachel.adams@example.com', '8880002222', '468 Dogwood Blvd');

-- Insert sample data into Rooms table
INSERT INTO Rooms (room_number, type, price, availability) VALUES
('101', 'Single', 100.00, TRUE),
('102', 'Double', 150.00, TRUE),
('103', 'Suite', 250.00, TRUE),
('104', 'Single', 120.00, TRUE),
('105', 'Double', 180.00, TRUE),
('106', 'Suite', 300.00, TRUE),
('107', 'Single', 110.00, TRUE),
('108', 'Double', 200.00, TRUE),
('109', 'Suite', 350.00, TRUE),
('110', 'Single', 130.00, TRUE);

-- Insert sample data into Bookings table
INSERT INTO Bookings (guest_id, room_id, check_in_date, check_out_date, status) VALUES
(1, 1, '2023-12-01', '2023-12-05', 'Confirmed'),
(2, 2, '2023-12-10', '2023-12-15', 'Checked Out'),
(3, 3, '2023-12-20', '2023-12-25', 'Confirmed'),
(4, 4, '2024-01-01', '2024-01-05', 'Confirmed'),
(5, 5, '2024-01-10', '2024-01-15', 'Confirmed'),
(6, 6, '2024-01-20', '2024-01-25', 'Cancelled'),
(7, 7, '2024-02-01', '2024-02-05', 'Checked Out'),
(8, 8, '2024-02-10', '2024-02-15', 'Confirmed'),
(9, 9, '2024-02-20', '2024-02-25', 'Confirmed'),
(10, 10, '2024-03-01', '2024-03-05', 'Confirmed');


-- Insert sample data into Payments table
INSERT INTO Payments (booking_id, amount, payment_date, payment_method) VALUES
(1, 400.00, '2023-12-01', 'Credit Card'),
(2, 750.00, '2023-12-10', 'Credit Card'),
(3, 1250.00, '2023-12-20', 'Debit Card'),
(4, 600.00, '2024-01-01', 'Cash'),
(5, 900.00, '2024-01-10', 'Credit Card'),
(6, 0.00, '2024-01-20', 'N/A'),
(7, 550.00, '2024-02-01', 'Credit Card'),
(8, 1000.00, '2024-02-10', 'Bank Transfer'),
(9, 1400.00, '2024-02-20', 'Credit Card'),
(10, 650.00, '2024-03-01', 'Debit Card');

-- Insert sample data into Services table
INSERT INTO Services (name, description, price) VALUES
('Room Service', '24/7 room service', 50.00),
('Spa', 'Full body massage', 100.00),
('Laundry', 'Professional laundry service', 30.00),
('Breakfast', 'Daily breakfast buffet', 20.00),
('Airport Shuttle', 'Pick-up and drop-off service', 70.00),
('Gym Access', 'Unlimited access to the gym', 10.00),
('Conference Room', 'Room with AV setup for meetings', 200.00),
('Pet Care', 'Care for pets during the stay', 50.00),
('Wi-Fi', 'High-speed internet access', 10.00),
('Mini Bar', 'In-room mini bar with snacks', 40.00);
