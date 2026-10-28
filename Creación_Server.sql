USE master;
GO

-- 1. Crear el objeto de auditoría a nivel de servidor
IF EXISTS (SELECT * FROM sys.server_audits WHERE name = 'Audit_PeruHop')
BEGIN
    ALTER SERVER AUDIT Audit_PeruHop WITH (STATE = OFF);
    DROP SERVER AUDIT Audit_PeruHop;
END
GO

CREATE SERVER AUDIT Audit_PeruHop
TO FILE (
    FILEPATH = 'C:\AuditLogs\',
    MAXSIZE = 10 MB,
    MAX_ROLLOVER_FILES = 5,
    RESERVE_DISK_SPACE = OFF
)
WITH (
    QUEUE_DELAY = 1000,
    ON_FAILURE = CONTINUE
);
GO

-- 2. Habilitar el Server Audit
ALTER SERVER AUDIT Audit_PeruHop WITH (STATE = ON);
GO