
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 09/27/2017 17:56:28
-- Generated from EDMX file: C:\Users\George\Desktop\George_Life\Computer\1. MVC 5\04.MvcMusicStore.C04\MvcMusicStore\MvcMusicStore\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Music];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Entity1Entity2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK_Entity1Entity2];
GO
IF OBJECT_ID(N'[dbo].[FK_Entity1Entity3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Albums] DROP CONSTRAINT [FK_Entity1Entity3];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Albums]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Albums];
GO
IF OBJECT_ID(N'[dbo].[Genres]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Genres];
GO
IF OBJECT_ID(N'[dbo].[Artists]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Artists];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Albums'
CREATE TABLE [dbo].[Albums] (
    [AlbumId] int IDENTITY(1,1) NOT NULL,
    [ArtistId] int  NOT NULL,
    [GenreId] int  NOT NULL,
    [Title] nvarchar(max)  NOT NULL,
    [Price] int  NOT NULL,
    [AlbumArtUrl] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Genres'
CREATE TABLE [dbo].[Genres] (
    [GenreId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Artists'
CREATE TABLE [dbo].[Artists] (
    [ArtistId] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AlbumId] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [PK_Albums]
    PRIMARY KEY CLUSTERED ([AlbumId] ASC);
GO

-- Creating primary key on [GenreId] in table 'Genres'
ALTER TABLE [dbo].[Genres]
ADD CONSTRAINT [PK_Genres]
    PRIMARY KEY CLUSTERED ([GenreId] ASC);
GO

-- Creating primary key on [ArtistId] in table 'Artists'
ALTER TABLE [dbo].[Artists]
ADD CONSTRAINT [PK_Artists]
    PRIMARY KEY CLUSTERED ([ArtistId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [GenreId] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_Entity1Entity2]
    FOREIGN KEY ([GenreId])
    REFERENCES [dbo].[Genres]
        ([GenreId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Entity2'
CREATE INDEX [IX_FK_Entity1Entity2]
ON [dbo].[Albums]
    ([GenreId]);
GO

-- Creating foreign key on [ArtistId] in table 'Albums'
ALTER TABLE [dbo].[Albums]
ADD CONSTRAINT [FK_Entity1Entity3]
    FOREIGN KEY ([ArtistId])
    REFERENCES [dbo].[Artists]
        ([ArtistId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Entity1Entity3'
CREATE INDEX [IX_FK_Entity1Entity3]
ON [dbo].[Albums]
    ([ArtistId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------