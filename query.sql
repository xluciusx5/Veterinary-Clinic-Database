USE Lucian_Test


/* Chihuahua appointments- 3A) */

SELECT AppointmentDataVar.Name, PetDataVar.breed
FROM Pet PetDataVar, Appointment AppointmentDataVar
WHERE AppointmentDataVar.name= PetDataVar.name
AND PetDataVar.Breed= 'Chihuahua'



/* Steve Rogers Appointments- 3B) */

SELECT VetDataVar.name, PetDataVar.name, AppointmentDateDataVar.Date
FROM Vet VetDataVar, Pet PetDataVar, Appointment AppointmentDateDataVar
WHERE AppointmentDateDataVar.name= PetDataVar.name
AND VetDataVar.VetID= AppointmentDateDataVar.VetID
AND VetDataVar.name= 'Steve Rogers'



/* January Appointments- 3C) */

SELECT AppointmentDataVar.Date, PetDataVar.name, VetDataVar.name
FROM Vet VetDataVar, Pet PetDataVar, Appointment AppointmentDataVar
WHERE AppointmentDataVar.name= PetDataVar.name
AND AppointmentDataVar.VetID= AppointmentDataVar.VetID
AND MONTH(AppointmentDataVar.date)= 1



/* Each Vet's Appointments- 3D) */

SELECT VetDataVar.name, AppointmentDataVar.name, AppointmentDataVar.Date 
FROM Vet VetDataVar, Pet PetDataVar, Appointment AppointmentDataVar
WHERE AppointmentDataVar.name= PetDataVar.name
AND VetDataVar.VetID= AppointmentDataVar.VetID
group by VetDataVar.name, AppointmentDataVar.name, AppointmentDataVar.date



/* Annual Check-Ups- 3F) */

SELECT PetDataVar.name, OwnerDataVar.name 
FROM Pet PetDataVar, Owner OwnerDataVar, Appointment AppointmentDataVar
WHERE PetDataVar.name= AppointmentDataVar.name
AND AppointmentDataVar.ID= OwnerDataVar.ID
AND AppointmentDataVar.reason= 'Annual Check-Up'

