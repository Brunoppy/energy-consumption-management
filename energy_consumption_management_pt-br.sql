CREATE DATABASE GerenciamentoConsumoEnergiaDB;
USE GerenciamentoConsumoEnergiaDB;

-- Tabela: Consumo_Energetico
CREATE TABLE Consumo_Energetico (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_departamento INT,
    id_ativo INT,
    consumo_kWh DECIMAL(10,2),
    custo DECIMAL(10,2),
    data_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_departamento) REFERENCES Departamentos(id),
    FOREIGN KEY (id_ativo) REFERENCES Ativos_TI(id)
);

-- Tabela: Dicas_Economia_Energia
CREATE TABLE Dicas_Economia_Energia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    dica VARCHAR(255),
    data_criacao DATETIME DEFAULT CURRENT_TIMESTAMP
);
