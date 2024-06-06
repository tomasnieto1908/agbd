INSERT INTO division("año","curso")
VALUES ("5","D"),("5","B");


INSERT INTO profesor("nombre","apellido")
VALUES ("Tomas","Mayorga"),
       ("Andres","Navarro"),
	  ("Federico","Villece"), 
	  ("Maximiliano","Urso"),
	  ("Eduardo","Mestrovich"),
	  ("Enrico","Rovaletti"),
	  ("nahuel","aruni"),
	  ("jose","Albornoz"),
	  ("Alejandro","Salomon")




 INSERT INTO materias("nombre","año")
VALUES ("Diseño Multimedial","5"),
       ("Diseño de Sorftware","5"),
	   ("Programacion Web","5"),
	   ("administracion y gestion de base de datos","5"),
	  ("dispositivos electronicos programables","5"),
	 ("redes de datos","5")      



    INSERT INTO asignacion(profesor_id,materia_id,division_id)
VALUES  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "navarro"), (SELECT materia_id FROM materias WHERE nombre like "diseño de software"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "mayorga"), (SELECT materia_id FROM materias WHERE nombre like "diseño de software"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "villace"), (SELECT materia_id FROM materias WHERE nombre like "programacion web"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
((SELECT profesor_id FROM profesor WHERE apellido LIKE "mayorga"), (SELECT materia_id FROM materias WHERE nombre like "programacion web"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "navarro"), (SELECT materia_id FROM materias WHERE nombre like "administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "mayorga"), (SELECT materia_id FROM materias WHERE nombre like "administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "rovaletti"), (SELECT materia_id FROM materias WHERE nombre like "diseño multimedial"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5" AND año like "5")),  
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "aruni"), (SELECT materia_id FROM materias WHERE nombre like "diseño multimedial"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5" AND año like "5")),
   ((SELECT profesor_id FROM profesor WHERE apellido LIKE "albornoz"), (SELECT materia_id FROM materias WHERE nombre like "redes de datos"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5" AND año like "5")),
    ((SELECT profesor_id FROM profesor WHERE apellido LIKE "salomon"), (SELECT materia_id FROM materias WHERE nombre like "redes de datos"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5" AND año like "5")),
	 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "urso"), (SELECT materia_id FROM materias WHERE nombre like "dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
	 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "mestrovich"), (SELECT materia_id FROM materias WHERE nombre like "dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso like "D" AND año like "5")),
	 
	 
	 
	  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "navarro"), (SELECT materia_id FROM materias WHERE nombre like "diseño de software"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "mayorga"), (SELECT materia_id FROM materias WHERE nombre like "diseño de software"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "villace"), (SELECT materia_id FROM materias WHERE nombre like "programacion web"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
((SELECT profesor_id FROM profesor WHERE apellido LIKE "mayorga"), (SELECT materia_id FROM materias WHERE nombre like "programacion web"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "navarro"), (SELECT materia_id FROM materias WHERE nombre like "administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "mayorga"), (SELECT materia_id FROM materias WHERE nombre like "administracion y gestion de base de datos"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "rovaletti"), (SELECT materia_id FROM materias WHERE nombre like "diseño multimedial"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),  
  ((SELECT profesor_id FROM profesor WHERE apellido LIKE "aruni"), (SELECT materia_id FROM materias WHERE nombre like "diseño multimedial"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
   ((SELECT profesor_id FROM profesor WHERE apellido LIKE "albornoz"), (SELECT materia_id FROM materias WHERE nombre like "redes de datos"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
    ((SELECT profesor_id FROM profesor WHERE apellido LIKE "salomon"), (SELECT materia_id FROM materias WHERE nombre like "redes de datos"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
	 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "urso"), (SELECT materia_id FROM materias WHERE nombre like "dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5")),
	 ((SELECT profesor_id FROM profesor WHERE apellido LIKE "mestrovich"), (SELECT materia_id FROM materias WHERE nombre like "dispositivos electronicos programables"), (SELECT division_id FROM division WHERE curso like "B" AND año like "5"));
	 
 UPDATE materias SET nombre = "diseño de software"
 WHERE materia_id = "2"

 UPDATE profesor SET apellido = "villace"
WHERE profesor_id = "3"

UPDATE asignacion set materia_id = (SELECT materia_id FROM materias WHERE nombre like "diseño de software")
WHERE materia_id is NULL