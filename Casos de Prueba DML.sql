USE PeruHopDB;
GO

-- CASO DE PRUEBA 1: Consulta de lectura (SELECT)
SELECT PasajeroID, Nombres, Pasaporte, Email
FROM dbo.Pasajeros
WHERE PasajeroID = 1;
GO

-- CASO DE PRUEBA 2: Modificación de registro (UPDATE)
UPDATE dbo.Pasajeros 
SET Email = 'j.smith_v2@peruhop.pe' 
WHERE PasajeroID = 1;
GO

-- CASO DE PRUEBA 3: Eliminación de registro (DELETE)
DELETE FROM dbo.Pasajeros 
WHERE PasajeroID = 5;
GO