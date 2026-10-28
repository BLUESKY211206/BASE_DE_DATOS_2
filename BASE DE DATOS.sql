CREATE DATABASE PeruHopDB;
GO
USE PeruHopDB;
GO

CREATE TABLE dbo.Pasajeros (
    PasajeroID INT IDENTITY(1,1) PRIMARY KEY,
    Nombres VARCHAR(50) NOT NULL,
    Apellidos VARCHAR(50) NOT NULL,
    Pasaporte VARCHAR(20) NOT NULL,
    Email VARCHAR(80) NOT NULL,
    Telefono VARCHAR(15) NULL,
    Estado VARCHAR(20) DEFAULT 'Activo'
);
GO
-- 3. Poblamiento inicial con 5 registros
INSERT INTO dbo.Pasajeros (Nombres, Apellidos, Pasaporte, Email, Telefono, Estado)
VALUES 
    ('John', 'Smith', 'A12345678', 'j.smith@email.com', '987654321', 'Activo'),
    ('Maria', 'Rojas', 'B98765432', 'm.rojas@email.com', '976543210', 'Activo'),
    ('Carlos', 'Mendoza', 'C45678912', 'c.mendoza@email.com', '965432109', 'Activo'),
    ('Ana', 'Gutiérrez', 'D78912345', 'a.gutierrez@email.com', '954321098', 'Activo'),
    ('Valeria', 'Pérez', 'E32165498', 'v.perez@email.com', '943210987', 'Activo');
GO

-- 4. Verificación del estado inicial (Captura N° 1)
SELECT * FROM dbo.Pasajeros;
GO