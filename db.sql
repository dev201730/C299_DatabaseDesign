DROP DATABASE IF EXISTS hotelDB;
CREATE DATABASE hotelDB;
USE hotelDB;


CREATE TABLE roomTypes ( 
	roomTypeId INT NOT NULL AUTO_INCREMENT, 
    roomTypeName VARCHAR(15),
    standardCapacity INT NOT NULL,
    maxCapacity INT NOT NULL,
    additionalGuestCost DECIMAL(10,2),
    CONSTRAINT pk_roomTypes PRIMARY KEY (roomTypeId)
);

CREATE TABLE guests (
	guestId INT NOT NULL AUTO_INCREMENT,
    firstName VARCHAR(100) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    address text,
    city VARCHAR(100),
    stateAbbr CHAR(2),
    zip CHAR(5),
    phone VARCHAR(14),
    CONSTRAINT pk_guests PRIMARY KEY (guestId)
    );
    
CREATE TABLE rooms (
	roomId INT NOT NULL,
    roomTypeId INT NOT NULL,
    adaAccessible BOOLEAN NOT NULL,
    basePrice DECIMAL(10,2),
    CONSTRAINT pk_rooms PRIMARY KEY (roomId),
	CONSTRAINT fk_rooms_roomTypes FOREIGN KEY (roomTypeId) REFERENCES roomTypes(roomTypeId)
);

CREATE TABLE amenities (
	amenityId INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    CONSTRAINT pk_amenities PRIMARY KEY (amenityId)
);

CREATE TABLE reservations (
	reservationId INT NOT NULL AUTO_INCREMENT,
    startDate DATE NOT NULL, 
    endDate DATE NOT NULL,
    CONSTRAINT pk_reservations PRIMARY KEY (reservationId)
);

CREATE TABLE roomAmenities (
	roomId INT NOT NULL,
	amenityId INT NOT NULL,
    CONSTRAINT pk_roomAmenities PRIMARY KEY (amenityId, roomId),
	CONSTRAINT fk_roomAmenities_rooms FOREIGN KEY (roomId) REFERENCES rooms(roomId),
	CONSTRAINT fk_roomAmenities_amenities FOREIGN KEY (amenityId) REFERENCES amenities(amenityId)
);

CREATE TABLE roomsReserved (
	roomId INT NOT NULL,
    reservationId INT NOT NULL,
    CONSTRAINT pk_roomsReserved PRIMARY KEY (roomId, reservationId),
	CONSTRAINT fk_roomsReserved_rooms FOREIGN KEY (roomId) REFERENCES rooms(roomId),
	CONSTRAINT fk_roomsReserved_reservations FOREIGN KEY (reservationId) REFERENCES reservations(reservationId)
);

CREATE TABLE guestsInReservation (
	guestId INT NOT NULL,
    reservationId INT NOT NULL,
    numberOfAdults INT NOT NULL,
    numberOfChildren INT NOT NULL,
    CONSTRAINT pk_guestsInReservation PRIMARY KEY (guestId, reservationId),
	CONSTRAINT fk_guestsInReservation_guests FOREIGN KEY (guestId) REFERENCES guests(guestId),
	CONSTRAINT fk_guestsInReservation_reservations FOREIGN KEY (reservationId) REFERENCES reservations(reservationId)
);
        
        

    
    
    