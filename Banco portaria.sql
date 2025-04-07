CREATE DATABASE portaria;
USE portaria;

CREATE TABLE moradores (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  NomeCompleto VARCHAR(100) NOT NULL UNIQUE,
  Bloco VARCHAR(45) NOT NULL,
  Apartamento VARCHAR(45) NOT NULL,
  Telefone VARCHAR(20),
  Email VARCHAR(100) UNIQUE,
  Status ENUM('residente', 'proprietario', 'visitante') NOT NULL
);

CREATE TABLE veiculos (
  id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  NomeDoMorador VARCHAR(100) NOT NULL,
  Placa VARCHAR(10) NOT NULL UNIQUE,
  Modelo VARCHAR(45),
  Cor VARCHAR(45),
  NumeroDaVaga VARCHAR(10),
  FOREIGN KEY (NomeDoMorador) REFERENCES moradores(NomeCompleto) ON DELETE CASCADE
);
