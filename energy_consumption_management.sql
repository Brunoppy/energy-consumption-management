CREATE DATABASE EnergyConsumptionDB;
USE EnergyConsumptionDB;

-- Table: Energy_Consumption
CREATE TABLE Energy_Consumption (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_id INT,
    asset_id INT,
    consumption_kWh DECIMAL(10,2),
    cost DECIMAL(10,2),
    recorded_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES Departments(id),
    FOREIGN KEY (asset_id) REFERENCES IT_Assets(id)
);

-- Table: Energy_Savings_Tips
CREATE TABLE Energy_Savings_Tips (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tip VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
