SELECT alumno.idAlumno, alumno.boleta, alumno.nombre, alumno.apellidoMaterno, alumno.apellidoPaterno, alumno.email, alumno.foto, carrera.idCarrera, carrera.nombre, carrera.duracion, carrera.idEscuela FROM Alumno AS alumno
INNER JOIN Carrera AS carrera
ON carrera.idCarrera = alumno.idCarrera;



SELECT carrera.nombre, escuela.nombre FROM Carrera AS carrera 
INNER JOIN Escuela AS  escuela 
on escuela.idEscuela  = carrera.idEscuela;

Select alumno.boleta, carrera.nombre FROM Alumno as alumno
INNER JOIN Carrera as carrera
on  alumno.idCarrera = carrera.idCarrera;

Select alumno.boleta, carrera.nombre, escuela.nombre  FROM Alumno as alumno
INNER JOIN Carrera as carrera
on  alumno.idCarrera = carrera.idCarrera
INNER JOIN Escuela as escuela
on carrera.idEscuela = escuela.idEscuela;
-- nombre --- alumno --escuela ---la lista de campos no tiene que ver con las relaciones----


Select alumno.nombre, apellidoPaterno, alumno.apellidoMaterno, escuela.nombre, carrera.idCarrera, escuela.nombre, ...--todos---los--
--campos--de tablas 
FROM Alumno as alumno
INNER JOIN Carrera as carrera
on  alumno.idCarrera = carrera.idCarrera
INNER JOIN Escuela as escuela
on carrera.idEscuela = escuela.idEscuela;
-- Inner Gigante con todos los campos de todas las tablas ---
Select  escuela.idEscuela,escuela.nombre as nombreEscuela,carrera.idCarrera,carrera.nombre as nombreCarrera,carrera.duracion,alumno.idAlumno,alumno.boleta,alumno.nombre as nombreAlumno,alumno.apellidoMaterno,alumno.apellidoPaterno,alumno.email,
alumno.foto  FROM Alumno as alumno
INNER JOIN Carrera as carrera
on  alumno.idCarrera = carrera.idCarrera
INNER JOIN Escuela as escuela
on carrera.idEscuela = escuela.idEscuela;




















