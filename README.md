
# Tourism Agency System

## Ekran Görüntüleri
https://github.com/SedatAy1/Tourism_Agency_System/issues/1

Patika Tourism Agency needs a structure where it can run its business digitally. Assume that you have agreed with Patika for this digital infrastructure.

The main purpose of this project is to enable the company operating in the hotel sector to manage its daily operations more effectively and to optimize customer reservation processes.

Patika Tourism Agency makes agreements with many hotels and reserves their rooms for customers. The first person with admin authority from the agency will be recorded in the database by the software developer. The person with admin authority will also be able to log in to the system and add both admin and agency employees. Agency employees will register hotels and rooms in the system, search for rooms and make reservations according to customers' requests. Consider a scenario where customers do not have access to the system but receive phone or in-person support.

Hotel Management System aims to achieve these goals by offering features such as flexible pricing, detailed hotel and room management, ease of reservation and automatic calculation to agency employees with a user-friendly interface.

The agency thinks that doing these tasks manually and on paper is a waste of time, and it needs software that will make its job easier.

The agency's expectations from the software:

Two different users will be defined in the project to be implemented. These are admin and agency employees. The powers of these users are as follows:
admin

User Management: When logged in with admin authority, the admin screen will open. From this screen,

Agency employee listing,
Adding,
Deletion,
Update and
Filtering should be done according to the user's role (admin, staff).


####  Agency Employee (Personnel)

Hotel Management: Listing and adding hotels
Room Management: Listing and adding rooms
Period Management: Listing and adding periods
Price Management
Room Search
Reservation operations: Reservation listing, adding, deleting, updating


####  User Management

User management is carried out by the admin to add, remove and edit users who will access the system. Users log in to the system by entering username and password.

When adding a new user to the system, Admin determines the user's role (admin, staff).
Admin can edit existing users' information (name, surname, password, etc.).
Admin can delete user account.
Admin can filter by user's role (admin, staff).


####  Hotel management

The agency must manage the contracted hotels with their location information and other features from the system. When adding a hotel, other definitions such as Hotel Name, Address, E-mail, Telephone, Star, Facility Features, and Pension types are made.

The hotel screen includes a screen listing hotels. Adding a hotel can be done via this screen. At the same time, existing hotels' hostel type, facility features and period information should be recorded.



####  Hostel Types expected to be in the system:

Ultra All Inclusive
All inclusive
Room breakfast
Full pension
Half board
Just Bed
Excluding Alcohol Full credit


#### Facility Features expected to be in the system:

Free Parking
Free WiFi
Swimming pool
Fitness Center
Hotel Concierge
SPA
24/7 Room Service


####   Sample Hotel Data;

Hotel Name: Coded Life Istanbul
City: Istanbul
Region: Beyoglu
Full Address: Şahkulu, Şişhane Metro Stop, Meşrutiyet Cd. No:125, 34421
Email: info@kodluzlar.org
Phone: 0212 xxx xx xx
Star: 5 Star
Facility Features

Free Parking
SPA
24/7 Room Service
Hostel Types
Room breakfast
Half board
Term Management

Historical periods of hotels are added and these periods are taken into account in room pricing. The aim here is to offer variable pricing. While hotel prices are higher in the summer months, this is less in the winter months. Pricing is made periodically in the tourism sector. Periods are defined as two date ranges.

Agency personnel enter the periods as date ranges. Room pricing varies according to these periods.



#### Example Periods:

01/01/2021 - 31/05/2021
01/06/2021 - 01/12/2021


#### Room Management

The agency employee adds the rooms reserved from hotels to the system and provides pricing based on these rooms. The room types offered by the hotels will be limited to 4 types: single room, double room, junior suite room and suite room. Instead of adding the same type of rooms to the system over and over again, stock logic is used. Additionally, the features of the rooms must be entered. Room feature information is described below. The room screen includes a screen listing all rooms. Agency staff can add rooms to hotels and search for rooms for reservation through this screen. When you go to the room adding page, the hotel, one of the 4 room types, one of the hostel types registered in the hotel's system, and one of the periods registered in the hotel's system are selected. According to the selections made, the nightly price information for the adult, the nightly price information for the child and the stock quantity of the room are entered. In addition, the number of beds, square meter information of the following room features, and whether or not the other room features are in the room should be recorded in the system. All information about the room should be displayed on the room listing screen. Room Features expected to be in the system:

Number of Beds
Square meters
Television (Yes, No)
Minibar (Yes, No)
Game Console (Yes, No)
Safe (Yes, No)
Projection (Yes, No)
The capacity of a room depends on the number of beds. 2 guests can be added to a 2-bed room.



#### Room Pricing

Rooms are calculated on a per night basis. Room prices will vary depending on the periods added to the hotel and the type of hostel. Different prices will be determined for adults and children.

Pricing expected in the system

Prices are defined according to the nightly cost of the rooms.





    
