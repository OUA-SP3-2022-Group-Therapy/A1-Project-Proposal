--This script was used to create the database. Please refer to Query Script.sql for the database queries.
--All account info is stored here.
CREATE TABLE Account
        (UserID VARCHAR(10) NOT NULL,
        Email VARCHAR(100) NOT NULL,
        Pass VARCHAR(25) NOT NULL,
        Name VARCHAR(20),
        User_Type VARCHAR(20),
        Gender VARCHAR(20),
        Date_Created DATETIME,
        PRIMARY KEY (UserID)
        );

--Family group info is stored here
CREATE TABLE Family_Group
        (GroupID VARCHAR(10) NOT NULL,
        FamilyName VARCHAR(100) NOT NULL,
        DateCreated DATE,
        MemberStatus VARCHAR(20),
        PRIMARY KEY (GroupID)
        );

--Membership to family group links is stored here
CREATE TABLE Membership
        (UserID VARCHAR(10) NOT NULL,
        GroupID VARCHAR(10) NOT NULL,
        PRIMARY KEY (UserID, GroupID)
        FOREIGN KEY (UserID) REFERENCES Account(UserID)
        FOREIGN KEY (GroupID) REFERENCES Family_Group(GroupID)
        );

--Schedule info is stored here
CREATE TABLE Schedule
        (ScheduleID VARCHAR(10) NOT NULL,
        ScheduleName VARCHAR(100),
        StartDateTime DATETIME,
        EndDateTime DATETIME,
        Type VARCHAR(20),
        Frequency VARCHAR(20),
        Portion_Dose VARCHAR(20),
        Description VARCHAR(300),
        GroupID VARCHAR(10),
        PRIMARY KEY (ScheduleID)
        FOREIGN KEY (GroupID) REFERENCES Family_Group(GroupID)
        );

--Event info is stored here
CREATE TABLE Event
        (ScheduleID VARCHAR(10) NOT NULL,
        EventName VARCHAR(100) NOT NULL,
        StartDateTime DATETIME,
        EndDateTime DATETIME,
        EventStatus INTEGER,
        CompletedBy VARCHAR(100),
        PRIMARY KEY (ScheduleID, EventName)
        FOREIGN KEY (ScheduleID) REFERENCES Schedule(ScheduleID)
        );

--Pet info is stored here
CREATE TABLE Pet
        (PetID VARCHAR(10) NOT NULL,
        Name VARCHAR(100) NOT NULL,
        Species VARCHAR(100),
        Breed VARCHAR(100),
        DOB DATE,
        Allergies VARCHAR(300),
        GroupID VARCHAR(10),
        PRIMARY KEY (PetID)
        FOREIGN KEY (GroupID) REFERENCES Family_Group(GroupID)
        );
        
--Pet Trend info is stored here
CREATE TABLE Trends
        (PetID VARCHAR(10) NOT NULL,
        Date DATE NOT NULL,
        Height INTEGER,
        Weight INTEGER,
        PRIMARY KEY (PetID, Date)
        FOREIGN KEY (PetID) REFERENCES Pet(PetID)
        );