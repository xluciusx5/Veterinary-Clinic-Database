USE master 
GO

ALTER DATABASE Lucian_Test SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO

IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'Lucian_Test')
	DROP DATABASE Lucian_Test
 GO

  CREATE DATABASE Lucian_Test
 GO

 use Lucian_Test
 GO
 




  /* Clear Tables when re-running */
IF OBJECT_ID('Care', 'U') IS NOT NULL
  DROP TABLE Care
  GO

IF OBJECT_ID('Appointment', 'U') IS NOT NULL
  DROP TABLE Appointment
  GO

  
IF OBJECT_ID('Vet', 'U') IS NOT NULL
  DROP TABLE Vet
  GO
  
IF OBJECT_ID('Pet', 'U') IS NOT NULL
  DROP TABLE Pet
  GO

IF OBJECT_ID('Owner', 'U') IS NOT NULL
  DROP TABLE Owner
  GO




/* Creating Owner Table*/
CREATE TABLE Owner 
(

ID nchar(5) NOT NULL,
Name nvarchar(70) NOT NULL,
Address nvarchar(70) NOT NULL,
Number nvarchar(15) NOT NULL,

CONSTRAINT pk_Owner PRIMARY KEY(ID)

)


/*Creating Pet Table*/
CREATE TABLE Pet 
(

ID nchar(5) NOT NULL,
Name nvarchar(70) NOT NULL,
Age int NOT NULL,
Type nvarchar(70) NOT NULL,
Breed nvarchar(70) NOT NULL,

CONSTRAINT pk_Pet PRIMARY KEY(ID, Name),

CONSTRAINT fk_Pet_Owner FOREIGN KEY(ID) REFERENCES Owner(ID)

)

/*Create Vet Table*/
CREATE TABLE Vet 
(

VetID nchar(4) NOT NULL,
Name nvarchar(70) NOT NULL,
Specialty nvarchar(70) NOT NULL,

CONSTRAINT pk_Vet PRIMARY KEY(VetID)

)


/*Creating Appointment Table*/
CREATE TABLE Appointment 
(

/*linked to Owner Table*/
ID nchar(5) NOT NULL, 
Name nvarchar(70) NOT NULL,

/*linked to Vet Table*/
VetID nchar(4) NOT NULL,

AppointmentID nchar(10) NOT NULL,
Date DATE NOT NULL,
Room INT NOT NULL,
Reason nvarchar(70) NOT NULL,


CONSTRAINT pk_AppointmentID PRIMARY KEY(AppointmentID, Name),

CONSTRAINT fk_Appointment_Owner FOREIGN KEY(ID, Name) REFERENCES Pet (ID, Name),

CONSTRAINT fk_Appointment_Vet FOREIGN KEY(VetID) REFERENCES Vet (VetID)

)


/*Creating Care Table*/
CREATE TABLE Care 
(

/*linked to Appointment Table*/
AppointmentID nchar(10) NOT NULL,
Name nvarchar(70) NOT NULL,

CareID nchar(10) NOT NULL,
Diagnosis nvarchar(70) NULL,
Prescription nvarchar(70) NULL,
Treatment nvarchar(70) NULL,
Cost money NULL,

CONSTRAINT pk_CareID PRIMARY KEY(CareID),

CONSTRAINT fk_Care_Appointment FOREIGN KEY(AppointmentID , Name) REFERENCES Appointment (AppointmentID , Name)

)