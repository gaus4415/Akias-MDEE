USE [master]
GO
/****** Object:  Database [Akias-DB]    Script Date: 01-04-2025 09:04:26 ******/
CREATE DATABASE [Akias-DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Akias-DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Akias-DB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Akias-DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Akias-DB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Akias-DB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Akias-DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Akias-DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Akias-DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Akias-DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Akias-DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Akias-DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Akias-DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Akias-DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Akias-DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Akias-DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Akias-DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Akias-DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Akias-DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Akias-DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Akias-DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Akias-DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Akias-DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Akias-DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Akias-DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Akias-DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Akias-DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Akias-DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Akias-DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Akias-DB] SET RECOVERY FULL 
GO
ALTER DATABASE [Akias-DB] SET  MULTI_USER 
GO
ALTER DATABASE [Akias-DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Akias-DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Akias-DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Akias-DB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Akias-DB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Akias-DB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Akias-DB', N'ON'
GO
ALTER DATABASE [Akias-DB] SET QUERY_STORE = OFF
GO
USE [Akias-DB]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 01-04-2025 09:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[AttendanceID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[BatchID] [int] NOT NULL,
	[AttendanceDate] [date] NOT NULL,
	[Status] [varchar](10) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AttendanceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Batches]    Script Date: 01-04-2025 09:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Batches](
	[BatchID] [int] IDENTITY(1,1) NOT NULL,
	[BatchName] [varchar](50) NOT NULL,
	[CourseID] [int] NOT NULL,
	[TeacherID] [int] NOT NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[BatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 01-04-2025 09:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [varchar](100) NOT NULL,
	[Description] [text] NULL,
	[DurationMonths] [int] NULL,
	[Fees] [decimal](10, 2) NOT NULL,
	[createBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fees]    Script Date: 01-04-2025 09:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fees](
	[FeeID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[DueDate] [date] NULL,
	[PaymentDate] [date] NULL,
	[Status] [varchar](10) NULL,
	[CreateBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[FeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 01-04-2025 09:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[EnrollmentDate] [date] NULL,
	[BatchID] [int] NULL,
	[CreateBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 01-04-2025 09:04:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[TeacherID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Email] [varchar](100) NULL,
	[Phone] [varchar](15) NULL,
	[Subject] [varchar](50) NULL,
	[HireDate] [date] NULL,
	[createBy] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifyBy] [varchar](50) NULL,
	[ModifyDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[TeacherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Attendance] ADD  DEFAULT ('Present') FOR [Status]
GO
ALTER TABLE [dbo].[Attendance] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Attendance] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Batches] ADD  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Batches] ADD  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Fees] ADD  DEFAULT ('Pending') FOR [Status]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([BatchID])
REFERENCES [dbo].[Batches] ([BatchID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD CHECK  (([Status]='Absent' OR [Status]='Present'))
GO
ALTER TABLE [dbo].[Fees]  WITH CHECK ADD CHECK  (([Status]='Overdue' OR [Status]='Paid' OR [Status]='Pending'))
GO
USE [master]
GO
ALTER DATABASE [Akias-DB] SET  READ_WRITE 
GO
