
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 01/23/2015 17:49:36
-- Generated from EDMX file: C:\Users\Fabian\Source\Repos\netdental\CDentalWitt\DB_LIB\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [netdental];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DiagTypeDiagpiece]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DiagpieceSet] DROP CONSTRAINT [FK_DiagTypeDiagpiece];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagUbicationDiagpiece]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DiagpieceSet] DROP CONSTRAINT [FK_DiagUbicationDiagpiece];
GO
IF OBJECT_ID(N'[dbo].[FK_ExtentionDentDiagpiece]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[DiagpieceSet] DROP CONSTRAINT [FK_ExtentionDentDiagpiece];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth1];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth2];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth3];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth4];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth5];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth6];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth7]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth7];
GO
IF OBJECT_ID(N'[dbo].[FK_DiagpieceTooth8]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToothSet] DROP CONSTRAINT [FK_DiagpieceTooth8];
GO
IF OBJECT_ID(N'[dbo].[FK_ClinicalHistoryPatient]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PatientSet] DROP CONSTRAINT [FK_ClinicalHistoryPatient];
GO
IF OBJECT_ID(N'[dbo].[FK_ToothClinicalHistory]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ClinicalHistorySet] DROP CONSTRAINT [FK_ToothClinicalHistory];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[DiagpieceSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DiagpieceSet];
GO
IF OBJECT_ID(N'[dbo].[DiagUbicationSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DiagUbicationSet];
GO
IF OBJECT_ID(N'[dbo].[ExtentionDentSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ExtentionDentSet];
GO
IF OBJECT_ID(N'[dbo].[DiagTypeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[DiagTypeSet];
GO
IF OBJECT_ID(N'[dbo].[ToothSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToothSet];
GO
IF OBJECT_ID(N'[dbo].[PatientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PatientSet];
GO
IF OBJECT_ID(N'[dbo].[ClinicalHistorySet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ClinicalHistorySet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'DiagpieceSet'
CREATE TABLE [dbo].[DiagpieceSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Definition] nvarchar(max)  NOT NULL,
    [Type] nvarchar(max)  NOT NULL,
    [Ubication] nvarchar(max)  NOT NULL,
    [Extention] nvarchar(max)  NOT NULL,
    [DiagType_Id] int  NOT NULL,
    [DiagUbication_Id] int  NOT NULL,
    [ExtentionDent_Id] int  NOT NULL
);
GO

-- Creating table 'DiagUbicationSet'
CREATE TABLE [dbo].[DiagUbicationSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Bodypart] nvarchar(max)  NOT NULL,
    [Codification] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ExtentionDentSet'
CREATE TABLE [dbo].[ExtentionDentSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Size] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DiagTypeSet'
CREATE TABLE [dbo].[DiagTypeSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Characteristic] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ToothSet'
CREATE TABLE [dbo].[ToothSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Position] nvarchar(max)  NOT NULL,
    [OC] nvarchar(max)  NOT NULL,
    [VE] nvarchar(max)  NOT NULL,
    [LI] nvarchar(max)  NOT NULL,
    [ME] nvarchar(max)  NOT NULL,
    [DI] nvarchar(max)  NOT NULL,
    [CV] nvarchar(max)  NOT NULL,
    [CL] nvarchar(max)  NOT NULL,
    [ROOT] nvarchar(max)  NOT NULL,
    [EXTRA] nvarchar(max)  NOT NULL,
    [ClinHist] nvarchar(max)  NOT NULL,
    [Diagpiece_Id] int  NOT NULL,
    [Diagpiece1_Id] int  NOT NULL,
    [Diagpiece2_Id] int  NOT NULL,
    [Diagpiece3_Id] int  NOT NULL,
    [Diagpiece4_Id] int  NOT NULL,
    [Diagpiece5_Id] int  NOT NULL,
    [Diagpiece6_Id] int  NOT NULL,
    [Diagpiece7_Id] int  NOT NULL,
    [Diagpiece8_Id] int  NOT NULL
);
GO

-- Creating table 'PatientSet'
CREATE TABLE [dbo].[PatientSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [DNI] nvarchar(max)  NOT NULL,
    [FirstName] nvarchar(max)  NOT NULL,
    [SecondName] nvarchar(max)  NOT NULL,
    [FamName] nvarchar(max)  NOT NULL,
    [LastName] nvarchar(max)  NOT NULL,
    [ClinicalHistory_Id] int  NOT NULL
);
GO

-- Creating table 'ClinicalHistorySet'
CREATE TABLE [dbo].[ClinicalHistorySet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [PatId] nvarchar(max)  NOT NULL,
    [Tooth_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'DiagpieceSet'
ALTER TABLE [dbo].[DiagpieceSet]
ADD CONSTRAINT [PK_DiagpieceSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DiagUbicationSet'
ALTER TABLE [dbo].[DiagUbicationSet]
ADD CONSTRAINT [PK_DiagUbicationSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ExtentionDentSet'
ALTER TABLE [dbo].[ExtentionDentSet]
ADD CONSTRAINT [PK_ExtentionDentSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DiagTypeSet'
ALTER TABLE [dbo].[DiagTypeSet]
ADD CONSTRAINT [PK_DiagTypeSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [PK_ToothSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PatientSet'
ALTER TABLE [dbo].[PatientSet]
ADD CONSTRAINT [PK_PatientSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ClinicalHistorySet'
ALTER TABLE [dbo].[ClinicalHistorySet]
ADD CONSTRAINT [PK_ClinicalHistorySet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DiagType_Id] in table 'DiagpieceSet'
ALTER TABLE [dbo].[DiagpieceSet]
ADD CONSTRAINT [FK_DiagTypeDiagpiece]
    FOREIGN KEY ([DiagType_Id])
    REFERENCES [dbo].[DiagTypeSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagTypeDiagpiece'
CREATE INDEX [IX_FK_DiagTypeDiagpiece]
ON [dbo].[DiagpieceSet]
    ([DiagType_Id]);
GO

-- Creating foreign key on [DiagUbication_Id] in table 'DiagpieceSet'
ALTER TABLE [dbo].[DiagpieceSet]
ADD CONSTRAINT [FK_DiagUbicationDiagpiece]
    FOREIGN KEY ([DiagUbication_Id])
    REFERENCES [dbo].[DiagUbicationSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagUbicationDiagpiece'
CREATE INDEX [IX_FK_DiagUbicationDiagpiece]
ON [dbo].[DiagpieceSet]
    ([DiagUbication_Id]);
GO

-- Creating foreign key on [ExtentionDent_Id] in table 'DiagpieceSet'
ALTER TABLE [dbo].[DiagpieceSet]
ADD CONSTRAINT [FK_ExtentionDentDiagpiece]
    FOREIGN KEY ([ExtentionDent_Id])
    REFERENCES [dbo].[ExtentionDentSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ExtentionDentDiagpiece'
CREATE INDEX [IX_FK_ExtentionDentDiagpiece]
ON [dbo].[DiagpieceSet]
    ([ExtentionDent_Id]);
GO

-- Creating foreign key on [Diagpiece_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth]
    FOREIGN KEY ([Diagpiece_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth'
CREATE INDEX [IX_FK_DiagpieceTooth]
ON [dbo].[ToothSet]
    ([Diagpiece_Id]);
GO

-- Creating foreign key on [Diagpiece1_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth1]
    FOREIGN KEY ([Diagpiece1_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth1'
CREATE INDEX [IX_FK_DiagpieceTooth1]
ON [dbo].[ToothSet]
    ([Diagpiece1_Id]);
GO

-- Creating foreign key on [Diagpiece2_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth2]
    FOREIGN KEY ([Diagpiece2_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth2'
CREATE INDEX [IX_FK_DiagpieceTooth2]
ON [dbo].[ToothSet]
    ([Diagpiece2_Id]);
GO

-- Creating foreign key on [Diagpiece3_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth3]
    FOREIGN KEY ([Diagpiece3_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth3'
CREATE INDEX [IX_FK_DiagpieceTooth3]
ON [dbo].[ToothSet]
    ([Diagpiece3_Id]);
GO

-- Creating foreign key on [Diagpiece4_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth4]
    FOREIGN KEY ([Diagpiece4_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth4'
CREATE INDEX [IX_FK_DiagpieceTooth4]
ON [dbo].[ToothSet]
    ([Diagpiece4_Id]);
GO

-- Creating foreign key on [Diagpiece5_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth5]
    FOREIGN KEY ([Diagpiece5_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth5'
CREATE INDEX [IX_FK_DiagpieceTooth5]
ON [dbo].[ToothSet]
    ([Diagpiece5_Id]);
GO

-- Creating foreign key on [Diagpiece6_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth6]
    FOREIGN KEY ([Diagpiece6_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth6'
CREATE INDEX [IX_FK_DiagpieceTooth6]
ON [dbo].[ToothSet]
    ([Diagpiece6_Id]);
GO

-- Creating foreign key on [Diagpiece7_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth7]
    FOREIGN KEY ([Diagpiece7_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth7'
CREATE INDEX [IX_FK_DiagpieceTooth7]
ON [dbo].[ToothSet]
    ([Diagpiece7_Id]);
GO

-- Creating foreign key on [Diagpiece8_Id] in table 'ToothSet'
ALTER TABLE [dbo].[ToothSet]
ADD CONSTRAINT [FK_DiagpieceTooth8]
    FOREIGN KEY ([Diagpiece8_Id])
    REFERENCES [dbo].[DiagpieceSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DiagpieceTooth8'
CREATE INDEX [IX_FK_DiagpieceTooth8]
ON [dbo].[ToothSet]
    ([Diagpiece8_Id]);
GO

-- Creating foreign key on [ClinicalHistory_Id] in table 'PatientSet'
ALTER TABLE [dbo].[PatientSet]
ADD CONSTRAINT [FK_ClinicalHistoryPatient]
    FOREIGN KEY ([ClinicalHistory_Id])
    REFERENCES [dbo].[ClinicalHistorySet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ClinicalHistoryPatient'
CREATE INDEX [IX_FK_ClinicalHistoryPatient]
ON [dbo].[PatientSet]
    ([ClinicalHistory_Id]);
GO

-- Creating foreign key on [Tooth_Id] in table 'ClinicalHistorySet'
ALTER TABLE [dbo].[ClinicalHistorySet]
ADD CONSTRAINT [FK_ToothClinicalHistory]
    FOREIGN KEY ([Tooth_Id])
    REFERENCES [dbo].[ToothSet]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToothClinicalHistory'
CREATE INDEX [IX_FK_ToothClinicalHistory]
ON [dbo].[ClinicalHistorySet]
    ([Tooth_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------