CREATE DATABASE IF NOT EXISTS empresa_db;
USE empresa_db;
CREATE TABLE Departamento (
    DeptID INT NOT NULL AUTO_INCREMENT,
    NombreDepto VARCHAR(100) NOT NULL,
    Ubicacion VARCHAR(100) NOT NULL,
    PRIMARY KEY (DeptID)
);

CREATE TABLE Empleado (
    EmpID INT NOT NULL AUTO_INCREMENT,
    Nombre VARCHAR(50) NOT NULL,
    Apellido VARCHAR(50) NOT NULL,
    Edad INT NOT NULL,
    Salario DECIMAL(10, 2) NOT NULL,
    DeptID INT NOT NULL,
    PRIMARY KEY (EmpID),
    CONSTRAINT fk_empleado_departamento
        FOREIGN KEY (DeptID)
        REFERENCES Departamento (DeptID)
        ON DELETE RESTRICT
        ON UPDATE CASCADE
);