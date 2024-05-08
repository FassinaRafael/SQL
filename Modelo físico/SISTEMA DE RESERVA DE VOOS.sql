CREATE DATABASE IF NOT EXISTS passagens_aereas;
USE passagens_aereas;
CREATE TABLE IF NOT EXISTS passageiros(
Id_passageiro INT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
data_nasc DATE NOT NULL,
nacionalidade VARCHAR(40) NOT NULL
);
CREATE TABLE IF NOT EXISTS reservas(
Id_reserva INT PRIMARY KEY,
data_reserva DATE NOT NULL,
forma_pagamento ENUM("DINHEIRO", "PIX","CREDITO", "DEBITO"),
valor_reserva DECIMAL(10,2) NOT NULL
);
CREATE TABLE IF NOT EXISTS passageiros_reservas(
Id_passageiro INT,
Id_reserva INT,
PRIMARY KEY(Id_passageiro, Id_reserva),
FOREIGN KEY (Id_passageiro) REFERENCES passageiros(Id_passageiro),
FOREIGN KEY (Id_reserva) REFERENCES reservas(Id_reserva)
);
CREATE TABLE IF NOT EXISTS aeroportos(
Id_aeroporto INT PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
pais VARCHAR(40) NOT NULL,
estado VARCHAR(40) NOT NULL,
cidade VARCHAR(40) NOT NULL,
tamanho_pista DECIMAL(20,1)
);
CREATE TABLE IF NOT EXISTS cia_aereas(
Id_cia INT PRIMARY KEY,
nome VARCHAR(40) NOT NULL,
CNPJ VARCHAR(20) NOT NULL
);
CREATE TABLE IF NOT EXISTS aeronaves(
Id_aeronave INT PRIMARY KEY,
modelo VARCHAR(45) NOT NULL,
ano_fabricacao YEAR NOT NULL,
fabricante VARCHAR(45) NOT NULL,
Id_cia INT,
FOREIGN KEY(Id_cia) REFERENCES cia_aereas(Id_cia)
);
CREATE TABLE IF NOT EXISTS voos(
Id_voo INT PRIMARY KEY,
Aero_partida INT NOT NULL,
data_partida DATE NOT NULL,
hora_partida TIME NOT NULL,
Aero_chegada INT NOT NULL,
data_chegada DATE NOT NULL,
hora_chegada TIME NOT NULL,
Id_aeronave INT NOT NULL,
Id_cia INT NOT NULL,
FOREIGN KEY(Aero_chegada) REFERENCES aeroportos(Id_aeroporto),
FOREIGN KEY(Aero_partida) REFERENCES aeroportos(Id_aeroporto),
FOREIGN KEY(Id_aeronave) REFERENCES aeronaves(Id_aeronave),
FOREIGN KEY(Id_cia) REFERENCES cia_aereas(Id_cia)
);