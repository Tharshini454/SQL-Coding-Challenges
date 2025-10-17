create database cityhospital;
use cityhospital;

-- CREATE Table --
CREATE TABLE Patients (
    PatientID INT ,
    PatientName VARCHAR(50),
    Age INT,
    Gender varchar(10),
    AdmissionDate DATE
);

-- ALTER – Add Column --
Alter table Patients
add DoctorAssigned VARCHAR(50);

-- ALTER – Modify Column --
Alter table Patients
modify column PatientName varchar(100);

-- RENAME Table --
Rename table Patients to Patient_Info;

-- TRUNCATE & DROP --
Truncate table Patient_Info;
Drop table Patient_Info;
