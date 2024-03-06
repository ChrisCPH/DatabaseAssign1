USE [Assign 1]
GO
ALTER TABLE [dbo].[Reductions] DROP CONSTRAINT [FK_Reductions_City]
GO
ALTER TABLE [dbo].[Population] DROP CONSTRAINT [FK_Population_City]
GO
ALTER TABLE [dbo].[Emissions] DROP CONSTRAINT [FK_Emissions_City]
GO
ALTER TABLE [dbo].[City] DROP CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[Assessments] DROP CONSTRAINT [FK_Assessments_City]
GO
/****** Object:  Table [dbo].[Reductions]    Script Date: 05-03-2024 15:10:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reductions]') AND type in (N'U'))
DROP TABLE [dbo].[Reductions]
GO
/****** Object:  Table [dbo].[Population]    Script Date: 05-03-2024 15:10:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Population]') AND type in (N'U'))
DROP TABLE [dbo].[Population]
GO
/****** Object:  Table [dbo].[Emissions]    Script Date: 05-03-2024 15:10:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Emissions]') AND type in (N'U'))
DROP TABLE [dbo].[Emissions]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 05-03-2024 15:10:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Country]') AND type in (N'U'))
DROP TABLE [dbo].[Country]
GO
/****** Object:  Table [dbo].[City]    Script Date: 05-03-2024 15:10:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
DROP TABLE [dbo].[City]
GO
/****** Object:  Table [dbo].[Assessments]    Script Date: 05-03-2024 15:10:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Assessments]') AND type in (N'U'))
DROP TABLE [dbo].[Assessments]
GO
USE [master]
GO
/****** Object:  Database [Assign 1]    Script Date: 05-03-2024 15:10:21 ******/
DROP DATABASE [Assign 1]
GO
/****** Object:  Database [Assign 1]    Script Date: 05-03-2024 15:10:21 ******/
CREATE DATABASE [Assign 1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Assign 1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Assign 1.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Assign 1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Assign 1_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Assign 1] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Assign 1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Assign 1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Assign 1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Assign 1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Assign 1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Assign 1] SET ARITHABORT OFF 
GO
ALTER DATABASE [Assign 1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Assign 1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Assign 1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Assign 1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Assign 1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Assign 1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Assign 1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Assign 1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Assign 1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Assign 1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Assign 1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Assign 1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Assign 1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Assign 1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Assign 1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Assign 1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Assign 1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Assign 1] SET RECOVERY FULL 
GO
ALTER DATABASE [Assign 1] SET  MULTI_USER 
GO
ALTER DATABASE [Assign 1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Assign 1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Assign 1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Assign 1] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Assign 1] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Assign 1] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Assign 1', N'ON'
GO
ALTER DATABASE [Assign 1] SET QUERY_STORE = ON
GO
ALTER DATABASE [Assign 1] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Assign 1]
GO
/****** Object:  Table [dbo].[Assessments]    Script Date: 05-03-2024 15:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessments](
	[AssessmentID] [int] NOT NULL,
	[OrganisationName] [varchar](255) NOT NULL,
	[Assessment] [varchar](2550) NULL,
	[YearOfPublication] [int] NULL,
	[BoundaryOfAssessment] [varchar](2550) NULL,
	[Access] [varchar](25) NULL,
 CONSTRAINT [PK_Assessments] PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 05-03-2024 15:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityName] [varchar](255) NULL,
	[OrganisationID] [int] NOT NULL,
	[OrganisationName] [varchar](255) NOT NULL,
	[CountryName] [varchar](255) NOT NULL,
	[CityLocation] [varchar](255) NULL,
	[GCoMCity] [varchar](255) NULL,
	[C40City] [varchar](255) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[OrganisationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 05-03-2024 15:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] NOT NULL,
	[CountryName] [varchar](255) NOT NULL,
	[CountryLocation] [varchar](255) NULL,
	[RegionName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Emissions]    Script Date: 05-03-2024 15:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emissions](
	[EmissionID] [int] NOT NULL,
	[OrganisationName] [varchar](255) NOT NULL,
	[Year] [int] NULL,
	[TotalEmissions] [varchar](255) NULL,
	[GasesIncluded] [varchar](255) NULL,
	[ChangeFromLastYear] [varchar](255) NULL,
	[ReasonForChange] [varchar](2550) NULL,
	[Scope1] [varchar](255) NULL,
	[Scope2] [varchar](255) NULL,
	[Comments] [varchar](1000) NULL,
	[GDP] [varchar](255) NULL,
	[GDPCurrency] [varchar](255) NULL,
	[YearOfGDP] [varchar](255) NULL,
	[GDPSource] [varchar](255) NULL,
 CONSTRAINT [PK_Emissions] PRIMARY KEY CLUSTERED 
(
	[EmissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Population]    Script Date: 05-03-2024 15:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Population](
	[PopulationID] [int] NOT NULL,
	[Population] [int] NULL,
	[PopulationYear] [int] NULL,
	[OrganisationName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Population] PRIMARY KEY CLUSTERED 
(
	[PopulationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reductions]    Script Date: 05-03-2024 15:10:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reductions](
	[ReductionID] [int] NOT NULL,
	[OrganisationName] [varchar](255) NOT NULL,
	[Year] [int] NULL,
	[PercentTargetReduction] [varchar](255) NULL,
	[TargetDate] [varchar](255) NULL,
	[Sector] [varchar](255) NULL,
	[Baseline] [varchar](255) NULL,
	[BaselineYear] [varchar](255) NULL,
	[Comments] [varchar](1000) NULL,
 CONSTRAINT [PK_Reductions] PRIMARY KEY CLUSTERED 
(
	[ReductionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Assessments]  WITH CHECK ADD  CONSTRAINT [FK_Assessments_City] FOREIGN KEY([OrganisationName])
REFERENCES [dbo].[City] ([OrganisationName])
GO
ALTER TABLE [dbo].[Assessments] CHECK CONSTRAINT [FK_Assessments_City]
GO
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_City_Country] FOREIGN KEY([CountryName])
REFERENCES [dbo].[Country] ([CountryName])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_City_Country]
GO
ALTER TABLE [dbo].[Emissions]  WITH CHECK ADD  CONSTRAINT [FK_Emissions_City] FOREIGN KEY([OrganisationName])
REFERENCES [dbo].[City] ([OrganisationName])
GO
ALTER TABLE [dbo].[Emissions] CHECK CONSTRAINT [FK_Emissions_City]
GO
ALTER TABLE [dbo].[Population]  WITH CHECK ADD  CONSTRAINT [FK_Population_City] FOREIGN KEY([OrganisationName])
REFERENCES [dbo].[City] ([OrganisationName])
GO
ALTER TABLE [dbo].[Population] CHECK CONSTRAINT [FK_Population_City]
GO
ALTER TABLE [dbo].[Reductions]  WITH CHECK ADD  CONSTRAINT [FK_Reductions_City] FOREIGN KEY([OrganisationName])
REFERENCES [dbo].[City] ([OrganisationName])
GO
ALTER TABLE [dbo].[Reductions] CHECK CONSTRAINT [FK_Reductions_City]
GO
USE [master]
GO
ALTER DATABASE [Assign 1] SET  READ_WRITE 
GO
