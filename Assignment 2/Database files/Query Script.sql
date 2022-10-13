--Verify login request [Unfinished]
SELECT UserID, Email, Password
FROM Account
WHERE Email = /*Email*/ and Password = /*Password*/;

--Signup add initial
INSERT INTO Account (UserID, Email, Password, Date_Created)
VALUES (/*RANDINT*/, /*User_input*/, /*User_input2*/, DATETIME('now'));
--Need to create a trigger than also edits this in the Membershipp table

--Signup add secondary
INSERT INTO Account (User_Type, Gender)
VALUES (/*User_Type*/, /*Gender*/)
WHERE USERID = /*UserID*/

--Modify user details
INSERT INTO Account (Email, Password, User_Type, Gender, Date_Created)
VALUES (/*VALUES*/)
WHERE USERID = /*UserID*/

--Retrieve user details
SELECT *
FROM Account
WHERE UserID = /*UserID*/;

--Delete user details;
DELETE FROM Account (Email, Password, User_Type, Gender, Date_Created)
Where UserID = /*UserID*/;
--Need to delete it from Membership as well

--Add group details
INSERT INTO Family_Group (GroupID, FamilyName, DateCreated, MemberStatus)
VALUES (/*VALUES*/);

--Modify group details
INSERT INTO Family_Group (FamilyName, DateCreated, MemberStatus)
VALUES (/*VALUES*/)
WHERE GroupID = /*GroupID*/;

--Retrieve group details
SELECT *
FROM Family_Group
WHERE GroupID = /*Selected ID*/;

--Delete group details
DELETE FROM Family_Group (FamilyName, DateCreated, MemberStatus)
Where GroupID = /*Selected ID*/;

--Add schedule details
INSERT INTO Schedule (ScheduleID, ScheduleName StartDateTime, EndDateTime, Type, Frequency, Portion/dose, Description)
VALUES (/*VALUES*/);

--Modify schedule details
INSERT INTO Schedule (ScheduleName StartDateTime, EndDateTime, Type, Frequency, Portion/dose, Description)
VALUES (/*VALUES*/)
WHERE ScheduleID = /*ScheduleID*/;

--Retrieve schedule details
SELECT *
FROM Schedule
WHERE ScheduleID = /*ScheduleID*/;

--Delete schedule details
DELETE FROM Schedule (ScheduleName StartDateTime, EndDateTime, Type, Frequency, Portion/dose, Description)
Where ScheduleID = /*ScheduleID*/;

--Add event details
INSERT INTO Event (ScheduleID, EventName, StartDateTime, EndDateTime, EventStatus, CompletedBy)
VALUES (/*VALUES*/);

--Modify event details
INSERT INTO Event (EventName, StartDateTime, EndDateTime, EventStatus, CompletedBy)
VALUES (/*VALUES*/)
WHERE ScheduleID = /*ScheduleID*/ and EventName = /*EventName*/;

--Modify event details (Event for checking off)
INSERT INTO Event (EventStatus, CompletedBy)
VALUES (/*VALUES*/)
WHERE ScheduleID = /*ScheduleID*/ and EventName = /*EventName*/;

--Retrieve event details
SELECT *
FROM Event
WHERE ScheduleID = /*ScheduleID*/ and EventName = /*EventName*/;

--Delete event details
DELETE FROM INSERT INTO Event (EventName, StartDateTime, EndDateTime, EventStatus, CompletedBy)
WHERE ScheduleID = /*ScheduleID*/ and EventName = /*EventName*/;

--Add pet details
INSERT INTO Pet (PetID, Name, Species, Breed, DOB, Allergies)
VALUES (/*VALUES*/);

--Modify pet details
INSERT INTO Pet (Name, Species, Breed, DOB, Allergies)
VALUES (/*VALUES*/)
WHERE PetID = /*PetID*/;

--Retrieve pet details
SELECT *
FROM Pet
WHERE PetID = /*PetID*/;

--Delete pet details
DELETE FROM INSERT INTO Pet (Name, Species, Breed, DOB, Allergies)
WHERE PetID = /*PetID*/;

--Add pet trend entry
INSERT INTO Trends (PetID, Date, Height, Weight)
VALUES (/*VALUES*/)

--Retrieve pet trend entry
SELECT *
FROM Trends
WHERE PetID = /*PetID*/ and Date = /*Date*/;