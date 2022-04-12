use Lucian_Test
Go


/*Populate Owner Table*/
INSERT INTO Owner
VALUES('N1000', 'Simon Blackquill', '87 Elpis Drive, Aberdeen', '01224 496476');

INSERT INTO Owner
VALUES('N1001', 'Phoenix Wright', '3 Ishgard Close, Aberdeen', '01224 496390');

INSERT INTO Owner
VALUES('N1002', 'Athena Cykes', '23 Thavnair Road, Inverurie', '01224 496180');

INSERT INTO Owner
VALUES('N1003', 'Maya Fey', '11 Sharlayan Street, Dyce  ', '01224 496853');

INSERT INTO Owner
VALUES('N1004', 'Miles Edgeworth', '57 Tempest Avenue, Westhill ', '01224 496398');

INSERT INTO Owner
VALUES('N1005', 'Franziska von Karma', '8 Amaurot Lane, Portlethen ', '01224 496094')



/*Populate Pet Table*/
/*Simon*/
INSERT INTO Pet
VALUES('N1000', 'Rory', '9', 'Cat', 'Ragdoll');
INSERT INTO Pet
VALUES('N1000', 'Hades', '14', 'Cat', 'Persian');

/*Phoenix*/
INSERT INTO Pet
VALUES('N1001', 'Maddie', '11', 'Dog', 'Chihuahua');
INSERT INTO Pet
VALUES('N1001', 'Wease', '11', 'Dog', 'Chihuahua');
INSERT INTO Pet
VALUES('N1001', 'Phoebe', '1', 'Dog', 'Chihuahua');

/*Athena*/
INSERT INTO Pet
VALUES('N1002', 'Chip', '3', 'Guinea Pig', 'null');
INSERT INTO Pet
VALUES('N1002', 'Dale', '3', 'Guinea Pig', 'null');

/*Maya*/
INSERT INTO Pet
VALUES('N1003', 'Evie', '5', 'Cat', 'Tortoiseshell');
INSERT INTO Pet
VALUES('N1003', 'Izzy', '3', 'Cat', 'Mixed');

/*Miles*/
INSERT INTO Pet
VALUES('N1004', 'Henry', '4', 'Dog', 'Husky');

/*Franziska*/
INSERT INTO Pet
VALUES('N1005', 'William', '14', 'Horse', 'Appaloosa');



/*Populate Vet Table*/
INSERT INTO Vet
VALUES('V300' ,'Natasha Romanova', 'Feline');

INSERT INTO Vet
VALUES('V301' ,'Bruce Banner', 'Dentistry');

INSERT INTO Vet
VALUES('V302' ,'Tony Stark', 'Canine');

INSERT INTO Vet
VALUES('V303' ,'Peter Parker', 'Small Animal Care');

INSERT INTO Vet
VALUES('V304' ,'Steve Rogers', 'Equine');



/*Populate Appointment Table*/
/*Simon*/
INSERT INTO Appointment
VALUES('N1000', 'Rory', 'V300', 'A200', '2022/01/11', '4', 'Injured from cat fight');
INSERT INTO Appointment
VALUES('N1000', 'Hades', 'V300', 'A201', '2022/01/15', '5', 'Vaccinations');

/*Phoenix*/
INSERT INTO Appointment
VALUES('N1001', 'Maddie', 'V301', 'A202', '2022/01/10', '2', 'Annual Check-Up');
INSERT INTO Appointment
VALUES('N1001', 'Wease', 'V301', 'A202', '2022/01/10', '2', 'Annual Check-Up');
INSERT INTO Appointment
VALUES('N1001', 'Phoebe', 'V302', 'A203', '2022/02/2', '1', 'Puppy Check-Up');

/*Athena*/
INSERT INTO Appointment
VALUES('N1002', 'Chip', 'V303', 'A204', '2022/01/5', '3', 'Not eating');

/*Maya*/
INSERT INTO Appointment
VALUES('N1003', 'Evie', 'V300', 'A205', '2022/01/11', '2', 'Car Accident');
INSERT INTO Appointment
VALUES('N1003', 'Evie', 'V300', 'A206', '2022/02/8', '2', 'Follow-Up');

/*Miles*/
INSERT INTO Appointment
VALUES('N1004', 'Henry', 'V302', 'A207', '2021/12/26', '2', 'Ate Chocolate');

/*Franziska*/
INSERT INTO Appointment
VALUES('N1005', 'William', 'V304', 'A208', '2022/01/27', '1', 'Vaccinations');
INSERT INTO Appointment
VALUES('N1005', 'William', 'V304', 'A209', '2022/02/3', '1', 'Injury');
INSERT INTO Appointment
VALUES('N1005', 'William', 'V304', 'A210', '2022/02/7', '1', 'Follow-Up');


/*Populate Care Table*/
/*Simon*/
INSERT INTO Care
VALUES('A200', 'Rory', 'C100', 'Scratches and Wounds', 'Painkillers','Antibiotics and stithces', '£150');
INSERT INTO Care
VALUES('A201','Hades', 'C101', NULL, NULL,'Vaccinations', '£50');

/*Phoenix*/
INSERT INTO Care
VALUES('A202','Maddie', 'C102', NULL, NULL, 'Clean teeth', '£100');
INSERT INTO Care
VALUES('A203','Phoebe', 'C104', NULL, NULL, 'Vaccinations, flea and wormer', '£80');

/*Athena*/
INSERT INTO Care
VALUES('A204','Chip', 'C105', 'Fussy', NULL, 'Offer different food', '£30');

/*Maya*/
INSERT INTO Care
VALUES('A205','Evie', 'C106', 'Broken Leg', 'Painkillers and cone for head', 'Surgery and rest', '£450');
INSERT INTO Care
VALUES('A206','Evie', 'C107', 'Healing Well', NULL, 'Continue Treatment Plan', '£30');

/*Miles*/
INSERT INTO Care
VALUES('A207','Henry', 'C108', 'Chocolate Poisoning', 'Painkillers and laxatives', 'Stomach Pumped', '£300');

/*Franziska*/
INSERT INTO Care
VALUES('A208','William', 'C109', NULL, NULL, 'Vaccinations', '£75');
INSERT INTO Care
VALUES('A209','William', 'C110', 'Kicked, caused lameness', 'Painkillers', 'Box Rest', '£85');
INSERT INTO Care
VALUES('A210','William', 'C111', 'Healed', NULL, 'Back to usual management', '£60');

