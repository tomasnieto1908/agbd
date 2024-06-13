2-INSERT INTO user("username","password")
VALUES ("tomas","123"),("nieto","1234")
VALUES ((SELECT id FROM user WHERE username like "tomas"),"messi","messi2"),
((SELECT id FROM user WHERE username like "tomas"),"diego","diego2"),
((SELECT id FROM user WHERE username like "tomas"),"casla","casla"),
((SELECT id FROM user WHERE username like "nieto"),"cuervo","cuervo2"),
((SELECT id FROM user WHERE username like "nieto"),"messi2","messi3"),
((SELECT id FROM user WHERE username like "nieto"),"hola","hola2")
3-INSERT INTO user("username","password")
VALUES ("romagnoli",(SELECT password FROM user WHERE username like "tomas"))
4-UPDATE post set body = ""
WHERE author_id = (SELECT id FROM user WHERE username like "nieto")
5-DELETE FROM post 
WHERE author_id = (SELECT id FROM user WHERE username like "nieto")
DELETE FROM user
WHERE id = (SELECT id FROM user WHERE username like "nieto")
