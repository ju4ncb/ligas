drop table Jugadores;

create table Jugadores(
	id_jugador int auto_increment,
    usuario varchar(20),
    constraint Jugadores_PK primary key(id_jugador),
    constraint Jugadores_UN unique(usuario)
);

drop table Juegos;

create table Juegos(
	id_juego int auto_increment,
    nombre varchar(40),
    constraint Juegos_PK primary key(id_juego)
);

drop table Encuentros;

create table Encuentros(
	id_encuentro int auto_increment,
    id_juego int,
    descripcion varchar(100),
    fecha date,
    constraint id_encuentro primary key(id_encuentro),
    constraint id_juego foreign key(id_juego) references Juegos(id_juego)
);

drop table Jugadores_Encuentros;

create table Jugadores_Encuentros(
	id_jugador_encuentro int auto_increment,
    id_jugador int,
    id_encuentro int,
    puntos int,
    constraint Jugadores_Encuentros_PK primary key(id_jugador_encuentro),
    constraint Jugadores_Encuentros_Jugadores_FK foreign key(id_jugador) references Jugadores(id_jugador),
    constraint Jugadores_Encuentros_Encuentros_FK foreign key(id_encuentro) references Encuentros(id_encuentro)
);
