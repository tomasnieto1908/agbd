1-select DISTINCT * from crime_scene_report
 where city = "SQL City"
ORDER by description ASC

2-SELECT DISTINCT name,plate_number,car_make,car_model FROM drivers_license d
join person p on d.id = p.license_id
WHERE gender = "male" and age <40
ORDER by name ASC