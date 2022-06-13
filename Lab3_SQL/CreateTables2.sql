USE MASTER
GO
CREATE DATABASE UNIVER
ON PRIMARY
(name = N'UNIVER_mdf', filename=N'C:\BD\UNIVER_mdf.mdf', size = 10240Kb,
maxsize=UNLIMITED, filegrowth=1024Kb),
(name = N'UNIVER_ndf', filename=N'C:\BD\UNIVER_ndf.ndf', size = 10240Kb,
maxsize=1GB, filegrowth=25%),
FILEGROUP FG1
(name = N'UNIVER_fg1_1', filename=N'C:\BD\UNIVER_fgd-1.ndf', size = 10240Kb,
maxsize=1GB, filegrowth=25%),
(name = N'UNIVER_fg1_2', filename=N'C:\BD\UNIVER_fgd-2.ndf', size = 10240Kb,
maxsize=1GB, filegrowth=25%)
log on
(name = N'UNIVER_log', filename=N'C:\BD\UNIVER_log.ldf', size = 10240Kb,
maxsize=2048Gb, filegrowth=10%)

