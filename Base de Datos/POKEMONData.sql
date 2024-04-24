USE POKEMON;

-- Insertar datos en `Jugador`
INSERT INTO Jugador (ID_jugador, Nombre_jugador, Email, Contraseña, Fecha_Registro, Puntos_experiencia, Nivel) VALUES
(1, 'Jugador1', 'jugador1@example.com', 'pass1', '2024-01-01', 100, 1),
(2, 'Jugador2', 'jugador2@example.com', 'pass2', '2024-01-02', 200, 2),
(3, 'Jugador3', 'jugador3@example.com', 'pass3', '2024-01-03', 300, 3),
(4, 'Jugador4', 'jugador4@example.com', 'pass4', '2024-01-04', 400, 4),
(5, 'Jugador5', 'jugador5@example.com', 'pass5', '2024-01-05', 500, 5),
(6, 'Jugador6', 'jugador6@example.com', 'pass6', '2024-01-06', 600, 6),
(7, 'Jugador7', 'jugador7@example.com', 'pass7', '2024-01-07', 700, 7),
(8, 'Jugador8', 'jugador8@example.com', 'pass8', '2024-01-08', 800, 8),
(9, 'Jugador9', 'jugador9@example.com', 'pass9', '2024-01-09', 900, 9),
(10, 'Jugador10', 'jugador10@example.com', 'pass10', '2024-01-10', 1000, 10),
(11, 'Jugador11', 'jugador11@example.com', 'pass11', '2024-01-11', 1100, 11),
(12, 'Jugador12', 'jugador12@example.com', 'pass12', '2024-01-12', 1200, 12),
(13, 'Jugador13', 'jugador13@example.com', 'pass13', '2024-01-13', 1300, 13),
(14, 'Jugador14', 'jugador14@example.com', 'pass14', '2024-01-14', 1400, 14),
(15, 'Jugador15', 'jugador15@example.com', 'pass15', '2024-01-15', 1500, 15);

-- Insertar datos en `Registro`
-- Asegúrate de que los IDs de jugadores ya existan antes de insertarlos aquí
INSERT INTO Registro (ID_registro, ID_Jugador_1, ID_Jugador_2) VALUES
(1, 1, 2),
(2, 3, 4),
(3, 5, 6),
(4, 7, 8),
(5, 9, 10),
(6, 11, 12),
(7, 13, 14),
(8, 15, 1),
(9, 2, 3),
(10, 4, 5),
(11, 6, 7),
(12, 8, 9),
(13, 10, 11),
(14, 12, 13),
(15, 14, 15);

-- Insertar datos en `Deck`
-- Asegúrate de que los IDs de jugadores ya existan antes de asignarles decks
INSERT INTO Deck (ID_deck, ID_jugador, Nombre_deck, Categoria) VALUES
(1, 1, 'Deck Alpha', 'Fire'),
(2, 2, 'Deck Beta', 'Water'),
(3, 3, 'Deck Gamma', 'Earth'),
(4, 4, 'Deck Delta', 'Air'),
(5, 5, 'Deck Epsilon', 'Fire'),
(6, 6, 'Deck Zeta', 'Water'),
(7, 7, 'Deck Eta', 'Earth'),
(8, 8, 'Deck Theta', 'Air'),
(9, 9, 'Deck Iota', 'Fire'),
(10, 10, 'Deck Kappa', 'Water'),
(11, 11, 'Deck Lambda', 'Earth'),
(12, 12, 'Deck Mu', 'Air'),
(13, 13, 'Deck Nu', 'Fire'),
(14, 14, 'Deck Xi', 'Water'),
(15, 15, 'Deck Omicron', 'Earth');

-- Insertar datos en `Carta`
INSERT INTO Carta (ID_carta, Nombre_carta, Tipo_carta, Rareza, Valor) VALUES
(1, 'Dragon', 'Monster', 'Rare', 50),
(2, 'Sphinx', 'Monster', 'Uncommon', 40),
(3, 'Griffin', 'Monster', 'Common', 30),
(4, 'Unicorn', 'Monster', 'Rare', 50),
(5, 'Pegasus', 'Monster', 'Uncommon', 40),
(6, 'Hydra', 'Monster', 'Common', 30),
(7, 'Cerberus', 'Monster', 'Rare', 50),
(8, 'Phoenix', 'Monster', 'Uncommon', 40),
(9, 'Gargoyle', 'Monster', 'Common', 30),
(10, 'Mermaid', 'Monster', 'Rare', 50),
(11, 'Centaur', 'Monster', 'Uncommon', 40),
(12, 'Minotaur', 'Monster', 'Common', 30),
(13, 'Fairy', 'Monster', 'Rare', 50),
(14, 'Troll', 'Monster', 'Uncommon', 40),
(15, 'Goblin', 'Monster', 'Common', 30);

-- Insertar datos en `Efecto`
-- Asegúrate de que los IDs de cartas ya existan antes de asignarles efectos
INSERT INTO Efecto (ID_efecto, ID_carta, Descripcion) VALUES
(1, 1, 'Double damage during nighttime.'),
(2, 2, 'Heal 20 points each turn.'),
(3, 3, 'Increase defense by 10%'),
(4, 4, 'Reflect first attack.'),
(5, 5, 'Double speed underwater.'),
(6, 6, 'Poison opponent slowly.'),
(7, 7, 'Triple damage when health is below 20%.'),
(8, 8, 'Resurrect once per game.'),
(9, 9, 'Stone skin reduces damage by 30%.'),
(10, 10, 'Sing to confuse opponent.'),
(11, 11, 'Double attack range.'),
(12, 12, 'Fury mode when alone on the field.'),
(13, 13, 'Invisibility for the first 3 turns.'),
(14, 14, 'Regenerate 10 health each turn.'),
(15, 15, 'Steal 5 gold from opponent each turn.');

-- Insertar datos en `Torneo`
INSERT INTO Torneo (ID_torneo, Fecha_inicio, Fecha_final, Nombre_torneo, Posicion_Score) VALUES
(1, '2024-08-01', '2024-08-10', 'Kanto Challenge', 100),
(2, '2024-09-01', '2024-09-10', 'Johto Open', 200),
(3, '2024-10-01', '2024-10-10', 'Hoenn League', 300),
(4, '2024-11-01', '2024-11-10', 'Sinnoh Cup', 400),
(5, '2024-12-01', '2024-12-10', 'Unova Classic', 500),
(6, '2025-01-01', '2025-01-10', 'Kalos Tournament', 600),
(7, '2025-02-01', '2025-02-10', 'Alola Sun Fest', 700),
(8, '2025-03-01', '2025-03-10', 'Galar Gala', 800),
(9, '2025-04-01', '2025-04-10', 'Orre Outback', 900),
(10, '2025-05-01', '2025-05-10', 'Fiore Fete', 1000),
(11, '2025-06-01', '2025-06-10', 'Almia Assembly', 1100),
(12, '2025-07-01', '2025-07-10', 'Oblivia Gathering', 1200),
(13, '2025-08-01', '2025-08-10', 'Pasio Prologue', 1300),
(14, '2025-09-01', '2025-09-10', 'Paldea Party', 1400),
(15, '2025-10-01', '2025-10-10', 'Lental League', 1500);

-- Insertar datos en `Partida`
-- Asegúrate de que los IDs de registro y torneo ya existan antes de asignar partidas
INSERT INTO Partida (ID_partida, ID_registro, Score, ID_torneo) VALUES
(1, 1, 8000, 1),
(2, 2, 7500, 2),
(3, 3, 9000, 3),
(4, 4, 8500, 4),
(5, 5, 8700, 5),
(6, 6, 9200, 6),
(7, 7, 9400, 7),
(8, 8, 9500, 8),
(9, 9, 8800, 9),
(10, 10, 8100, 10),
(11, 11, 8450, 11),
(12, 12, 9075, 12),
(13, 13, 8660, 13),
(14, 14, 9330, 14),
(15, 15, 8910, 15);

-- Insertar datos en `Cantidad`
-- Asegúrate de que los IDs de deck y carta ya existan antes de asignar cantidad de cartas en un deck
INSERT INTO Cantidad (ID_cantidad, ID_deck, Numero_cartas, ID_carta) VALUES
(1, 1, 5, 1),
(2, 1, 3, 2),
(3, 2, 4, 3),
(4, 2, 2, 4),
(5, 3, 6, 5),
(6, 3, 1, 6),
(7, 4, 3, 7),
(8, 4, 4, 8),
(9, 5, 5, 9),
(10, 5, 3, 10),
(11, 6, 7, 11),
(12, 6, 2, 12),
(13, 7, 4, 13),
(14, 7, 4, 14),
(15, 8, 5, 15);

-- Insertar datos en `Turno`
-- Asegúrate de que los IDs de jugador, partida y efecto ya existan antes de asignar un turno
INSERT INTO Turno (ID_Turno, ID_jugador, ID_partida, ID_efecto, XP_generado) VALUES
(1, 1, 1, 1, 500),
(2, 2, 2, 2, 450),
(3, 3, 3, 3, 550),
(4, 4, 4, 4, 600),
(5, 5, 5, 5, 500),
(6, 6, 6, 6, 450),
(7, 7, 7, 7, 550),
(8, 8, 8, 8, 600),
(9, 9, 9, 9, 500),
(10, 10, 10, 10, 450),
(11, 11, 11, 11, 550),
(12, 12, 12, 12, 600),
(13, 13, 13, 13, 500),
(14, 14, 14, 14, 450),
(15, 15, 15, 15, 550);