select * from crime_scene_report
 where date =20180115 and type = "murder" and city = "SQL City"
 --	Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr".
 -- The second witness, named Annabel, lives somewhere on "Franklin Ave".

 select * from person
where name like "Annabel%" and address_street_name =  "Franklin Ave"
--id 16371

select * from person
where address_street_name =  "Northwestern Dr"
order by address_number desc limit 1
-- id 14887


 select * from interview
where person_id = 14887 or  person_id = 16371<
-- id 14887
--Escuché un disparo y luego vi a un hombre salir corriendo. 
--Tenía una bolsa de "Get Fit Now Gym". El número de membresía en la bolsa comenzaba con "48Z". 
--Sólo los miembros de oro tienen esas bolsas. El hombre se subió a un coche con una placa que decía "H42W".


--id 16371
--Vi ocurrir el 
--asesinato y reconocí al asesino en mi gimnasio cuando estaba haciendo ejercicio la semana pasada, el 9 de enero.

 select * from get_fit_now_member
where membership_status ="gold" and id like "48Z%"
              
   --           d	person_id	name	membership_start_date	membership_status
--48Z7A	28819	Joe Germuska	20160305	gold
--48Z55	67318	Jeremy Bowers	20160101	gold


SELECT p.id FROM person p JOIN drivers_license d
ON p.license_id = d.id
where plate_number like "%H42W%" 

--id
--51739
--67318
--78193


SELECT * FROM person p JOIN drivers_license d 
ON p.license_id = d.id JOIN get_fit_now_member g ON g.person_id = p.id
where plate_number like "%H42W%" and 
membership_status ="gold" and g.id like "48Z%"

--id	name	license_id	address_number	address_street_name	ssn	id	age	height	eye_color	hair_color	gender	plate_number	car_make	car_model	id	person_id	name	membership_start_date	membership_status
--67318	Jeremy Bowers	423327	530	Washington Pl, Apt 3A	871539279	423327	30	70	brown	brown	male	0H42W2	Chevrolet	Spark LS	48Z55	67318	Jeremy Bowers	20160101	gold

--CULPABLE 67318


 select * from interview
where person_id = 67318




 select person_id,count(*) as veces from facebook_event_checkin
 where date like "201712%" and event_name = "SQL Symphony Concert"
 group by person_id
 having veces = 3


SELECT person_id, count(*)as veces FROM  facebook_event_checkin f
JOIN person p ON f.person_id = p.id
JOIN drivers_license d ON p.license_id = d.id 
WHERE event_name = "SQL Symphony Concert" and car_make = "Tesla" and car_model = "Model S"
group by person_id
having veces = 3;


