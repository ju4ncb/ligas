drop table Jugadores;

create table Jugadores(
	id_jugador INT AUTO_INCREMENT,
    usuario VARCHAR(20) NOT NULL,
    esta_activo INT NOT NULL,
    CONSTRAINT Jugadores_PK PRIMARY KEY(id_jugador),
    CONSTRAINT Jugadores_UN UNIQUE(usuario)
);

drop table Juegos;

create table Juegos(
	id_juego INT AUTO_INCREMENT,
    nombre VARCHAR(40) NOT NULL,
    CONSTRAINT Juegos_PK PRIMARY KEY(id_juego)
);

drop table Ligas;

create table Ligas(
	id_liga INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    esta_activa INT NOT NULL,
    CONSTRAINT Ligas_PK PRIMARY KEY(id_liga),
    CONSTRAINT Ligas_UN UNIQUE(nombre)
);

drop table Encuentros;

create table Encuentros(
	id_encuentro INT AUTO_INCREMENT,
    id_juego INT NOT NULL,
    id_liga INT NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT Encuentros_PK PRIMARY KEY(id_encuentro),
    CONSTRAINT Encuentros_Juegos_FK FOREIGN KEY(id_juego) REFERENCES Juegos(id_juego),
    CONSTRAINT Encuentros_Ligas_FK FOREIGN KEY(id_liga) REFERENCES Ligas(id_liga)
);

drop table Jugadores_Encuentros;

create table Jugadores_Encuentros(
	id_jugador_encuentro INT AUTO_INCREMENT,
    id_jugador INT NOT NULL,
    id_encuentro INT NOT NULL,
    puntos INT NOT NULL,
    CONSTRAINT Jugadores_Encuentros_PK PRIMARY KEY(id_jugador_encuentro),
    CONSTRAINT Jugadores_Encuentros_Jugadores_FK FOREIGN KEY(id_jugador) REFERENCES Jugadores(id_jugador),
    CONSTRAINT Jugadores_Encuentros_Encuentros_FK FOREIGN KEY(id_encuentro) REFERENCES Encuentros(id_encuentro)
);

SELECT * FROM LIGAS;
DELETE FROM ligas WHERE nombre = "swim";
