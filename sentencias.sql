select * from inhabitant
select * from inhabitant where state = "friendly"
select * from inhabitant where state = "friendly" and job = "weaponsmith"
select * from inhabitant where state = "friendly" and job like '%smith' 
select personid from inhabitant where name = "Stranger"
select gold from inhabitant where name = "Stranger"
select * from item WHERE owner IS NULL
UPDATE item SET owner = 20 WHERE owner is null 
select * from inhabitant where state = "friendly" and (job = "dealer" or job= "merchant")