CREATE TABLE aircrafts_data
  (aircraft_code CHARACTER NOT NULL, model JSONB NOT NULL, "range" INTEGER NOT NULL)
  ;

 

CREATE TABLE airports_data(
  airport_code CHARACTER NOT NULL,
  airport_name JSONB NOT NULL,
  city JSONB NOT NULL,
  coordinates POINT NOT NULL,
  timezone TEXT NOT NULL
);

 

CREATE TABLE boarding_passes(
  ticket_no CHARACTER NOT NULL,
  flight_id INTEGER NOT NULL,
  boarding_no INTEGER NOT NULL,
  seat_no CHARACTER VARYING NOT NULL,
  CONSTRAINT boarding_passes_ak_1 UNIQUE(ticket_no)
);

 

CREATE TABLE seats(
aircraft_code CHARACTER NOT NULL, seat_no CHARACTER VARYING NOT NULL,
  fare_conditions CHARACTER VARYING NOT NULL
);

 

CREATE TABLE ticket_flights(
  ticket_no CHARACTER NOT NULL,
  flight_id INTEGER NOT NULL,
  fare_conditions CHARACTER VARYING NOT NULL,
  amount NUMERIC NOT NULL,
  boarding_passes_ticket_no CHARACTER NOT NULL,
  CONSTRAINT ticket_no_ticket_flights
    FOREIGN KEY (boarding_passes_ticket_no) REFERENCES boarding_passes (ticket_no)
);

 

CREATE TABLE tickets(
ticket_no CHARACTER NOT NULL, book_ref CHARACTER NOT NULL,
  passenger_id CHARACTER VARYING NOT NULL
);

 
