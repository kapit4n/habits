
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/23/2017 15:52:01
-- Generated from EDMX file: C:\Users\u6062296\Documents\Visual Studio 2017\WebSites\Habits\App_Code\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MSSQLLocalDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[HabitLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[HabitLog];
GO
IF OBJECT_ID(N'[dbo].[Habits]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Habits];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Habits'
CREATE TABLE [dbo].[Habits] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] varchar(max)  NOT NULL,
    [Image] varchar(max)  NULL,
    [Description] varchar(max)  NULL,
    [Done] bit  NOT NULL,
    [DoneDate] datetime  NULL,
    [HabitTime] int  NULL,
	[HabitLogCount] [int] DEFAULT(0)
);
GO

-- Creating table 'HabitLogs'
CREATE TABLE [dbo].[HabitLogs] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [HabitId] int  NULL,
    [DoneDate] datetime  NULL,
    [ChangeDescription] varchar(max)  NULL,
    [OldValue] varchar(max)  NULL,
    [NewValue] varchar(max)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Habits'
ALTER TABLE [dbo].[Habits]
ADD CONSTRAINT [PK_Habits]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'HabitLogs'
ALTER TABLE [dbo].[HabitLogs]
ADD CONSTRAINT [PK_HabitLogs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------