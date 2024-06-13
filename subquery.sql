1-INSERT INTO regions("region_name")
VALUES ("midlle east"),("africa")

2-UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name like "africa")
WHERE country_name in ("Zimbabwe","Zambia","Nigeria","Egypt")

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name like "midlle east")
WHERE country_name in ("Israel","Kuwait")
3-DELETE FROM regions
WHERE region_name = "Middle East and Africa"
4-INSERT INTO countries (country_id,country_name,region_id)
VALUES ("GH","Ghana",(SELECT region_id FROM regions WHERE region_name like "africa")),
       ("AG","Angola",(SELECT region_id FROM regions WHERE region_name like "africa")),
       ("EAU","Emiratos Árabes Unidos",(SELECT region_id FROM regions WHERE region_name like "midlle east")),
       ("TQ","Turquía",(SELECT region_id FROM regions WHERE region_name like "midlle east"))
