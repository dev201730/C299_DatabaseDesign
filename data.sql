USE hotelDB;

INSERT INTO amenities (name)
VALUES
('television'),
('air-conditioner'),
('fridge'),
('hair dryer'),
('heating');

INSERT INTO guests 
(firstName, lastName, address, city, stateAbbr, zip, phone)
VALUES
('Amber', 'Summer', '4284 High Street','New York', 'NY', '12345', '(327)-111-492'),
('Linda', 'Smart', '5240 North Street','Texas', 'TX', '23456', '(327)-222-492'),
('Anne', 'Johns', '1111 Lane Street','New Jersey', 'NJ', '23556', '(327)-333-492'),
('Lissa', 'Locka', '2222 Devon Street','New York', 'NY', '12308', '(327)-444-492'),
('Jane', 'West', '3333 Lake Street','New York', 'NY', '57398', '(327)-555-492'),
('Mary', 'East', '4356 Spencer Street','New York', 'NY', '69402', '(327)-666-492'),
('Eliah', 'Sander', '7890 Wall Street','New York', 'NY', '29479', '(327)-777-492'),
('Rose', 'Barley', '1234 New Street','New York', 'NY', '53850', '(327)-888-492'),
('Cedar', 'Heights', '5869 Old Street','New York', 'NY', '24982', '(327)-999-492'),
('Camelia', 'Ellen', '12 Port Road', 'Virginia', 'VA', '02842', '(291) 284-1865');


INSERT INTO roomTypes 
(roomTypeName, standardCapacity, maxCapacity, additionalGuestCost)
VALUES
('double', 2, 5, 10.00),
('single', 2, 2, null),
('suite', 3, 8, 15.00);


INSERT INTO rooms 
(roomId, roomTypeId, adaAccessible, basePrice)
VALUES
(101, 1, 1, 139.99),
(102, 1, 0, 174.99),
(103, 2, 0, 159.99),
(104, 1, 1, 104.99),
(105, 3, 0, 184.99),
(106, 3, 1, 149.99),
(107, 1, 1, 104.99),
(108, 2, 0, 159.99),
(109, 3, 1, 209.99),
(200, 1, 1, 124.99);

    
INSERT INTO roomAmenities
(roomId, amenityId)
VALUES
(101, 1),
(102, 5),
(102, 1),
(103, 2),
(104, 1),
(105, 4),
(105, 3),
(106, 2),
(107, 4),
(108, 2),
(109, 3),
(200, 1);



INSERT INTO reservations
(startDate, EndDate)
VALUES
('2023-01-02', '2023-02-04'),
('2023-02-05', '2023-02-10'),
('2023-03-02', '2023-03-24'),
('2023-03-06', '2023-03-07'),
('2023-04-17', '2023-04-20'),
('2023-05-18', '2023-05-23'),
('2023-06-01', '2023-07-31'),
('2023-06-05', '2023-07-05'),
('2023-06-09', '2023-07-13'),
('2023-07-23', '2023-08-24');
   

INSERT INTO roomsReserved
(roomId, reservationId)
VALUES
(102, 1),
(101, 2),
(104, 3),
(105, 4),
(103, 5),
(106, 6),
(107, 7),
(109, 8),
(108, 9),
(200, 10);


INSERT INTO guestsInReservation
(reservationId, guestId, quantityAdults, quantityChildren)
VALUES
(1, 6, 1, 0),
(2, 3, 2, 1),
(3, 4, 2, 0),
(4, 7, 2, 2),
(5, 1, 1, 1),
(6, 2, 3, 0),
(7, 7, 2, 2),
(8, 5, 2, 0),
(9, 10, 1, 0),
(10, 9, 1, 1);
