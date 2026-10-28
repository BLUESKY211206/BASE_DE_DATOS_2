USE PeruHopDB;
GO

-- Consulta para leer el archivo .sqlaudit generado
SELECT 
    event_time AS [Fecha_Hora_UTC],
    action_id AS [Tipo_Accion],
    session_server_principal_name AS [Usuario_Ejecutor],
    database_name AS [BaseDatos],
    object_name AS [Tabla_Auditada],
    statement AS [Sentencia_SQL_Ejecutada]
FROM sys.fn_get_audit_file('C:\AuditLogs\Audit_PeruHop_*.sqlaudit', DEFAULT, DEFAULT)
ORDER BY event_time DESC;
GO