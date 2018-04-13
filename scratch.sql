EXEC sp_databases
GO

use Prime
GO

SELECT TABLE_NAME FROM Prime.INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE'
SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE'
GO

--Determine version of mssql being run.
SELECT @@VERSION

--Determine version of driver currently installed...
https://github.com/mkleehammer/pyodbc/wiki/Connecting-to-SQL-Server-from-Linux-or-Mac

>>> pyodbc.connect('DSN=MySQLServerDatabase;UID=sa;PWD=GrUdKoWsKi')
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
pyodbc.InterfaceError: ('IM002', u'[IM002] [unixODBC][Driver Manager]Data source name not found, and no default driver specified (0) (SQLDriverConnect)')
>>>


