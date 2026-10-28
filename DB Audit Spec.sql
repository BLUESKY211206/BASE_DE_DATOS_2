USE PeruHopDB;
GO

-- 1. Crear la especificación de auditoría en la BD
IF EXISTS (SELECT * FROM sys.database_audit_specifications WHERE name = 'DB_Audit_PeruHop')
BEGIN
    ALTER DATABASE AUDIT SPECIFICATION DB_Audit_PeruHop WITH (STATE = OFF);
    DROP DATABASE AUDIT SPECIFICATION DB_Audit_PeruHop;
END
GO

CREATE DATABASE AUDIT SPECIFICATION DB_Audit_PeruHop
FOR SERVER AUDIT Audit_PeruHop
ADD (SELECT, UPDATE, DELETE ON dbo.Pasajeros BY public);
GO

-- 2. Habilitar la especificación
ALTER DATABASE AUDIT SPECIFICATION DB_Audit_PeruHop WITH (STATE = ON);
GO