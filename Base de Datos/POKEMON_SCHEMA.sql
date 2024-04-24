DROP SCHEMA IF EXISTS POKEMON;
CREATE SCHEMA POKEMON;
USE POKEMON;

-- Creación de tabla `Jugador`
CREATE TABLE Jugador (
    ID_jugador INT PRIMARY KEY,
    Nombre_jugador VARCHAR(50),
    Email VARCHAR(50),
    Contraseña VARCHAR(50),
    Fecha_Registro DATE,
    Puntos_experiencia INT,
    Nivel INT
);

-- Creación de tabla `Registro`
CREATE TABLE Registro (
    ID_registro INT PRIMARY KEY,
    ID_Jugador_1 INT,
    ID_Jugador_2 INT,
    FOREIGN KEY (ID_Jugador_1) REFERENCES Jugador(ID_jugador),
    FOREIGN KEY (ID_Jugador_2) REFERENCES Jugador(ID_jugador)
);

-- Creación de tabla `Deck`
CREATE TABLE Deck (
    ID_deck INT PRIMARY KEY,
    ID_jugador INT,
    Nombre_deck VARCHAR(50),
    Categoria VARCHAR(50),
    FOREIGN KEY (ID_jugador) REFERENCES Jugador(ID_jugador)
);

-- Creación de tabla `Carta`
CREATE TABLE Carta (
    ID_carta INT PRIMARY KEY,
    Nombre_carta VARCHAR(50),
    Tipo_carta VARCHAR(50),
    Rareza VARCHAR(50),
    Valor INT
);

-- Creación de tabla `Efecto`
CREATE TABLE Efecto (
    ID_efecto INT PRIMARY KEY,
    ID_carta INT,
    Descripcion TEXT,
    FOREIGN KEY (ID_carta) REFERENCES Carta(ID_carta)
);

-- Creación de tabla `Torneo`
CREATE TABLE Torneo (
    ID_torneo INT PRIMARY KEY,
    Fecha_inicio DATE,
    Fecha_final DATE,
    Nombre_torneo VARCHAR(50),
    Posicion_Score INT
);

-- Creación de tabla `Partida`
CREATE TABLE Partida (
    ID_partida INT PRIMARY KEY,
    ID_registro INT,
    Score INT,
    ID_torneo INT,
    FOREIGN KEY (ID_registro) REFERENCES Registro(ID_registro),
    FOREIGN KEY (ID_torneo) REFERENCES Torneo(ID_torneo)
);

-- Creación de tabla `Cantidad`
CREATE TABLE Cantidad (
    ID_cantidad INT PRIMARY KEY,
    ID_deck INT,
    Numero_cartas INT,
    ID_carta INT,
    FOREIGN KEY (ID_deck) REFERENCES Deck(ID_deck),
    FOREIGN KEY (ID_carta) REFERENCES Carta(ID_carta)
);

-- Creación de tabla `Turno` - ahora esta creación se realiza después de `Partida` y `Efecto`
CREATE TABLE Turno (
    ID_Turno INT PRIMARY KEY,
    ID_jugador INT,
    ID_partida INT,
    ID_efecto INT,
    XP_generado BIGINT,
    FOREIGN KEY (ID_jugador) REFERENCES Jugador(ID_jugador),
    FOREIGN KEY (ID_partida) REFERENCES Partida(ID_partida),
    FOREIGN KEY (ID_efecto) REFERENCES Efecto(ID_efecto)
);
