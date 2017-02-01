USE BaseGigante2;
INSERT INTO Escuela ( nombre ) VALUES
( 'ESCOM' ), ( 'ESCA' ), ( 'UPIICSA' ), ('ESIT' );

INSERT INTO Carrera (nombre, duracion, idEscuela) VALUES
( 'ING. EN SISTEMAS COMPUTACIONALES', 8, ( SELECT idEscuela FROM Escuela WHERE nombre = 'ESCOM' ) ),
( 'ING. EN QUIMICA TEXTIL', 8, ( SELECT idEscuela FROM Escuela WHERE nombre = 'ESIT' ) ),
( 'LIC. EN NEGOCIOS INTERNACIONLES', 8, ( SELECT idEscuela FROM Escuela WHERE nombre = 'ESCA' ) ),
( 'ING. EN ADMINISTRACION INDUSTRIAL', 8, ( SELECT idEscuela FROM Escuela WHERE nombre = 'UPIICSA' ) );

INSERT INTO Alumno ( boleta, nombre, apellidoPaterno, apellidoMaterno, email, idCarrera ) VALUES
('2013600985', 'J', 'L', 'Z', 'm@m', ( select idCarrera FROM Carrera WHERE nombre = 'ING. EN SISTEMAS COMPUTACIONALES' ) ) ,
('201363xxxx', 'D', 'L', 'Z', 'm@m', ( select idCarrera FROM Carrera WHERE nombre = 'ING. EN ADMINISTRACION INDUSTRIAL' ) );

INSERT INTO Calificacion (calificacion,idAlumno) 
VALUES ('nueve' ,
(select idAlumno FROM Alumno where boleta = '2013600985' and  
nombre = 'J' and  apellidoPaterno = 'L'and  apellidoMaterno =  'Z' and email = 'm@m' ));

INSERT INTO Materia(nombre,idAlumno)
VALUES 
('Matematicas', (select idAlumno  FROM Alumno where boleta= '2013600985'  ) ),
('Ingles',(select idAlumno  FROM Alumno where boleta = '201363xxxx'));

-- Ponerlas en Mysql
INSERT INTO Examen(periodo,fecha,idMateria)
VALUES 
('1','1973-12-30',(select idMateria FROM Materia where nombre ='Matematicas' )),
('6','1994-11-2',(select idMateria FROM Materia where nombre ='Ingles' ));



INSERT INTO Pregunta(pregunta,idExamen)
VALUES('¿Como te llamas?',1);

-- -Checar--
INSERT INTO Respuesta(resultado, correcto ,idPregunta) VALUES 
('nueve' ,1, (SELECT idPregunta FROM Pregunta WHERE pregunta = '¿Como te llamas?' ) );