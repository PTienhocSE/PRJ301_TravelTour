create table Booking(
BookingID int identity(1,1),
Tourid int,
Userid int,
BookingDate Date,
constraint FK_Booking_Account foreign key (Userid) references Account (id),
constraint FK_Booking_Tour foreign key (Tourid) references Tour(id)
)
