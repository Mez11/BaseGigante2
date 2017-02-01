DROP DATABASE IF EXISTS BaseGigante2;
create DATABASE  BaseGigante2;
use BaseGigante2;
create table Escuela(
idEscuela int not null auto_increment,
nombre varchar(35)  not null ,
primary key(idEscuela)
);
create table Carrera(
idCarrera int not null auto_increment,
nombre varchar(45) not null,
duracion varchar(45) not null,
idEscuela int not null ,
primary key (idCarrera),
foreign key(idEscuela) references Escuela(idEscuela)
);
create table Alumno(
idAlumno int not null auto_increment,
boleta varchar(45) not null,
nombre varchar(45) not null,
apellidoMaterno varchar(45) not null,
apellidoPaterno varchar(45) not null,
email varchar(45) not null,
foto mediumblob not null,
idCarrera int not null,
primary key (idAlumno),
foreign key (idCarrera) references Carrera(idCarrera)
);
create table Calificacion(
idCalificacion int not null auto_increment,
calificacion varchar(45) not null,
idAlumno int not null,
primary key(idCalificacion),
foreign key (idAlumno) references Alumno (idAlumno)
);

create table Materia (
idMateria int not null auto_increment,
nombre varchar(45) not null,
idAlumno int not null,
primary key(idMateria), 
foreign key(idAlumno) references Alumno (idAlumno)
 );
create table Examen (
    idExamen int not null auto_increment,
    periodo varchar(45) not null,
    fecha date  not null,
    idMateria int not null,
    primary key (idExamen),
    foreign key (idMateria) references Materia (idMateria)
);
 create table Pregunta (
 idPregunta int not null auto_increment,
 pregunta varchar(45) not null,
 idExamen int not null,
 primary key (idPregunta),
 foreign key (idExamen) references Pregunta (idPregunta)
 );
 create table  Respuesta (
 idRespuesta int not null auto_increment,
 resultado varchar(45) not null,
 idPregunta INT NOT NULL,
 correcto BIT NOT NULL DEFAULT 0,
 -- respuesta_anterior INT NOT NULL,
 primary key(idRespuesta),
 -- foreign key (respuesta_anterior) REFERENCES Respuesta(idRespuesta)
 foreign key (idPregunta) references Respuesta (idRespuesta)
 );
 
 
 
 
 
 
 
 
 
 
 
