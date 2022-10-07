--This script was used to create the database. Please refer to [query file] for the database queries.
--All account info is stored here.
CREATE TABLE Account
        (Email VARCHAR(100) NOT NULL,
        Password VARCHAR(100) NOT NULL,
        User_Type VARCHAR(20),
        Gender VARCHAR(20),
        Date_Created DATE,
        PRIMARY KEY (Email, Password)
        );

--Family group info is stored here
CREATE TABLE Family_Group
        (GroupName VARCHAR(100) NOT NULL,
        FamilyName VARCHAR(100) NOT NULL,
        DateCreated DATE,
        MemberStatus VARCHAR(20),
        PRIMARY KEY (GroupName)
        );

--Membership to family group links is stored here
CREATE TABLE Membership
        (Email VARCHAR(100) NOT NULL,
        Password VARCHAR(100) NOT NULL,
        GroupName VARCHAR(100) NOT NULL,
        PRIMARY KEY (Email, Password, GroupName)
        FOREIGN KEY (Email, Password) REFERENCES Account(Email, Password)
        FOREIGN KEY (GroupName) REFERENCES Family_Group(GroupName)
        );

--Schedule info is stored here
CREATE TABLE Schedule
        (GroupName VARCHAR(100) NOT NULL,
        ScheduleName VARCHAR(100) NOT NULL,
        StartDate DATETIME,
        EndDate DATETIME,
        Type VARCHAR(20),
        Frequency VARCHAR(20),
        Portion_Dose VARCHAR(20),
        Description VARCHAR(300),
        PRIMARY KEY (GroupName, ScheduleName)
        FOREIGN KEY (GroupName) REFERENCES Family_Group(GroupName)
        );

--Pet info is stored here
CREATE TABLE Pet
        (PetID VARCHAR(15) NOT NULL,
        Name VARCHAR(100) NOT NULL,
        Species VARCHAR(100),
        Breed VARCHAR(100),
        DOB DATE,
        Allergies VARCHAR(300),
        GroupName VARCHAR(100),
        PRIMARY KEY (PetID)
        FOREIGN KEY (GroupName) REFERENCES Family_Group(GroupName)
        );
        
--Pet Trend info is stored here
CREATE TABLE Trends
        (PetID VARCHAR(15) NOT NULL,
        Date DATE NOT NULL,
        Height INTEGER,
        Weight INTEGER,
        PRIMARY KEY (PetID, Date)
        FOREIGN KEY (PetID) REFERENCES Pet(PetID)
        );