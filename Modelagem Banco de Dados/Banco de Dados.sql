-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Destino (
id_destino INTEGER PRIMARY KEY,
nome VARCHAR(100),
descricao VARCHAR(10),
imagem VARCHAR(255)
)

CREATE TABLE Cliente (
id_cliente VARCHAR(10) PRIMARY KEY,
nome VARCHAR(100),
email VARCHAR(100),
telefone VARCHAR(20)
)

CREATE TABLE Pacote (
id_pacote INTEGER,
tipo VARCHAR(50),
nome VARCHAR(100),
descricao VARCHAR(10),
duracao_dias INTEGER,
preco DECIMAL(10,2)
)

CREATE TABLE Reserva (
id_reserva INTEGER PRIMARY KEY,
id_cliente INTEGER,
id_pacote INTEGER,
status VARCHAR(50),
data_reserva DATETIME,
valor_total DECIMAL(10,2)
)

CREATE TABLE Efetua (
id_reserva INTEGER,
FOREIGN KEY(id_reserva) REFERENCES Reserva (id_reserva)
)

CREATE TABLE Faz (
id_cliente VARCHAR(10),
id_reserva INTEGER,
FOREIGN KEY(id_cliente) REFERENCES Cliente (id_cliente),
FOREIGN KEY(id_reserva) REFERENCES Reserva (id_reserva)
)

CREATE TABLE Relacao2_Pacote_Destino (
id_destino INTEGER,
id_pacote VARCHAR(10),
FOREIGN KEY(id_destino) REFERENCES Destino (id_destino)
)

