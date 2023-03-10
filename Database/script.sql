USE [WorkforcePlanning]
GO
/****** Object:  Table [dbo].[ApprovalResult]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovalResult](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](40) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ApprovalResult] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApprovalStatus]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApprovalStatus](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](40) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ApprovalStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CostCentre]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CostCentre](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.CostCentre] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DataSourceFileConfigurations]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataSourceFileConfigurations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataLoadLocation] [nvarchar](2000) NOT NULL,
	[SourceFileName] [nvarchar](256) NOT NULL,
	[FirstRowHasColumnNames] [bit] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.DataSourceFileConfigurations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SubGroupId] [int] NULL,
	[EmploymentTypeId] [int] NULL,
	[Number] [nvarchar](15) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[FirstWorkingDate] [datetime] NOT NULL,
	[ProposedStartDate] [datetime] NOT NULL,
	[ProposedEndDate] [datetime] NULL,
	[Gender] [nvarchar](1) NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploymentType]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.EmploymentType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Goa]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goa](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Goa] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobFamily]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobFamily](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.JobFamily] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Building] [nvarchar](max) NULL,
	[LocationTypeId] [int] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocationType]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.LocationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PayScaleType]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PayScaleType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.PayScaleType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonnelSubArea]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonnelSubArea](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.PersonnelSubArea] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionDataSetId] [int] NOT NULL,
	[RevisedPositionId] [int] NULL,
	[ManagingPositionId] [int] NULL,
	[ManagingPositionNumber] [nvarchar](max) NULL,
	[JobId] [int] NULL,
	[JobFamilyId] [int] NULL,
	[GoaId] [int] NULL,
	[CostCentreId] [int] NULL,
	[HomeCostCentreId] [int] NULL,
	[FlowToCostCentreId] [int] NULL,
	[LocationId] [int] NULL,
	[WorkLocationId] [int] NULL,
	[SubGroupId] [int] NULL,
	[EmploymentTypeId] [int] NULL,
	[PersonnelSubAreaId] [int] NULL,
	[PayScaleTypeId] [int] NULL,
	[WorkScheduleId] [int] NULL,
	[EmployeeId] [int] NULL,
	[HeldByEmployeeNumber] [nvarchar](max) NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[PayScaleGroupMin] [nvarchar](10) NULL,
	[PayScaleGroupMax] [nvarchar](10) NULL,
	[PayScaleLevelMin] [nvarchar](10) NULL,
	[PayScaleLevelMax] [nvarchar](10) NULL,
	[OvertimeExempt] [bit] NOT NULL,
	[HardToRecruit] [bit] NOT NULL,
	[DoesCountAsHeadCount] [bit] NOT NULL,
	[IsCriticalSkill] [bit] NOT NULL,
	[PlannedStartDate] [datetime] NULL,
	[PlannedEndDate] [datetime] NULL,
	[PlanningSalary] [decimal](18, 2) NOT NULL,
	[EmploymentPercentage] [decimal](18, 2) NOT NULL,
	[FullTimeEquivalencyPercentage] [decimal](18, 2) NOT NULL,
	[PlanningSalaryBand] [int] NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
	[RevisedPosition_Id] [int] NULL,
 CONSTRAINT [PK_dbo.Position] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PositionDataSets]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionDataSets](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AsOfDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.PositionDataSets] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RevisedPosition]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RevisedPosition](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PositionDataSetId] [int] NOT NULL,
	[SourcePositionId] [int] NOT NULL,
	[ManagingPositionId] [int] NULL,
	[ManagingPositionNumber] [nvarchar](max) NULL,
	[JobId] [int] NULL,
	[JobFamilyId] [int] NULL,
	[GoaId] [int] NULL,
	[CostCentreId] [int] NULL,
	[HomeCostCentreId] [int] NULL,
	[FlowToCostCentreId] [int] NULL,
	[LocationId] [int] NULL,
	[WorkLocationId] [int] NULL,
	[SubGroupId] [int] NULL,
	[EmploymentTypeId] [int] NULL,
	[PersonnelSubAreaId] [int] NULL,
	[PayScaleTypeId] [int] NULL,
	[WorkScheduleId] [int] NULL,
	[EmployeeId] [int] NULL,
	[HeldByEmployeeNumber] [nvarchar](max) NULL,
	[Title] [nvarchar](256) NOT NULL,
	[Number] [nvarchar](15) NOT NULL,
	[PayScaleGroupMin] [nvarchar](10) NULL,
	[PayScaleGroupMax] [nvarchar](10) NULL,
	[PayScaleLevelMin] [nvarchar](10) NULL,
	[PayScaleLevelMax] [nvarchar](10) NULL,
	[OvertimeExempt] [bit] NOT NULL,
	[HardToRecruit] [bit] NOT NULL,
	[DoesCountAsHeadCount] [bit] NOT NULL,
	[IsCriticalSkill] [bit] NOT NULL,
	[PlannedStartDate] [datetime] NULL,
	[PlannedEndDate] [datetime] NULL,
	[PlanningSalary] [decimal](18, 2) NOT NULL,
	[EmploymentPercentage] [decimal](18, 2) NOT NULL,
	[FullTimeEquivalencyPercentage] [decimal](18, 2) NOT NULL,
	[PlanningSalaryBand] [int] NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.RevisedPosition] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RevisionApprovals]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RevisionApprovals](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RevisedPositionId] [int] NOT NULL,
	[ApprovalStatusId] [int] NOT NULL,
	[ApprovalResultId] [int] NULL,
	[UserId] [int] NULL,
	[ApprovalComments] [text] NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](40) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_RevisionApprovals] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SourceFileColumnMappings]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SourceFileColumnMappings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DataSourceFileId] [int] NOT NULL,
	[FieldName] [nvarchar](40) NOT NULL,
	[ColumnIndex] [int] NOT NULL,
	[ColumnLetter] [nvarchar](2) NOT NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SourceFileColumnMappings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubGroup]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.SubGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[CreatedBy] [nvarchar](40) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](40) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkSchedule]    Script Date: 8/15/2017 6:55:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkSchedule](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](256) NULL,
	[IsActive] [nvarchar](1) NULL,
	[ModifiedBy] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[EffectiveFromDate] [datetime] NOT NULL,
	[EffectiveToDate] [datetime] NULL,
 CONSTRAINT [PK_dbo.WorkSchedule] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CostCentre] ON 

INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'IT - OVERHEAD', N'28373', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'IT - CAPITAL', N'948757', N'MARC_DAVIS', N'MARC_DAVIS', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'HR - PROJECT', N'2764H', N'MARC_DAVIS', N'MARC_DAVIS', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'HR - STRATEGIC', N'28363s', N'MARC_DAVIS', N'MARC_DAVIS', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'OIL SAND - PROJECT', N'726347', N'MARC_DAVIS', N'MARC_DAVIS', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'CORPORATE - G&A', N'263599', N'MARC_DAVIS', N'MARC_DAVIS', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, N'Cost Centrre 1', N'342456', N'System', N'System', CAST(N'2017-08-05T00:51:00.073' AS DateTime), CAST(N'2017-08-05T00:51:00.073' AS DateTime), CAST(N'2017-08-05T00:51:00.073' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, N'Home Cost Centre 1', N'223564', N'System', N'System', CAST(N'2017-08-05T00:51:00.583' AS DateTime), CAST(N'2017-08-05T00:51:00.583' AS DateTime), CAST(N'2017-08-05T00:51:00.583' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (9, N'Cost Centrre 1', N'342456', N'System', N'System', CAST(N'2017-08-05T00:55:30.963' AS DateTime), CAST(N'2017-08-05T00:55:30.963' AS DateTime), CAST(N'2017-08-05T00:55:30.963' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (10, N'Home Cost Centre 1', N'223564', N'System', N'System', CAST(N'2017-08-05T00:55:31.517' AS DateTime), CAST(N'2017-08-05T00:55:31.517' AS DateTime), CAST(N'2017-08-05T00:55:31.517' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (11, N'Cost Centrre 1', N'342456', N'System', N'System', CAST(N'2017-08-05T00:59:03.633' AS DateTime), CAST(N'2017-08-05T00:59:03.633' AS DateTime), CAST(N'2017-08-05T00:59:03.633' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (12, N'Home Cost Centre 1', N'223564', N'System', N'System', CAST(N'2017-08-05T00:59:04.033' AS DateTime), CAST(N'2017-08-05T00:59:04.033' AS DateTime), CAST(N'2017-08-05T00:59:04.033' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (13, N'Cost Centrre 1', N'342456', N'System', N'System', CAST(N'2017-08-08T20:41:51.870' AS DateTime), CAST(N'2017-08-08T20:41:51.870' AS DateTime), CAST(N'2017-08-08T20:41:51.870' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (14, N'Home Cost Centre 1', N'223564', N'System', N'System', CAST(N'2017-08-08T20:41:53.023' AS DateTime), CAST(N'2017-08-08T20:41:53.023' AS DateTime), CAST(N'2017-08-08T20:41:53.023' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (15, N'Cost Centrre 1', N'342456', N'System', N'System', CAST(N'2017-08-08T20:46:31.723' AS DateTime), CAST(N'2017-08-08T20:46:31.723' AS DateTime), CAST(N'2017-08-08T20:46:31.723' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (16, N'Home Cost Centre 1', N'223564', N'System', N'System', CAST(N'2017-08-08T20:46:31.767' AS DateTime), CAST(N'2017-08-08T20:46:31.767' AS DateTime), CAST(N'2017-08-08T20:46:31.767' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (17, N'Cost Centrre 1', N'342456', N'System', N'System', CAST(N'2017-08-08T20:51:58.937' AS DateTime), CAST(N'2017-08-08T20:51:58.937' AS DateTime), CAST(N'2017-08-08T20:51:58.937' AS DateTime), NULL)
INSERT [dbo].[CostCentre] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (18, N'Home Cost Centre 1', N'223564', N'System', N'System', CAST(N'2017-08-08T20:51:59.353' AS DateTime), CAST(N'2017-08-08T20:51:59.353' AS DateTime), CAST(N'2017-08-08T20:51:59.353' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[CostCentre] OFF
SET IDENTITY_INSERT [dbo].[DataSourceFileConfigurations] ON 

INSERT [dbo].[DataSourceFileConfigurations] ([Id], [DataLoadLocation], [SourceFileName], [FirstRowHasColumnNames], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N's', N's', 1, N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[DataSourceFileConfigurations] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, NULL, 1, N'34857', N'Marc', N'Davis', CAST(N'1980-01-01T00:00:00.000' AS DateTime), CAST(N'2010-01-05T00:00:00.000' AS DateTime), CAST(N'2010-01-10T00:00:00.000' AS DateTime), CAST(N'2010-01-05T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'M', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, NULL, 1, N'23746', N'Nancy', N'Allen', CAST(N'1970-03-01T00:00:00.000' AS DateTime), CAST(N'2005-04-04T00:00:00.000' AS DateTime), CAST(N'2005-04-10T00:00:00.000' AS DateTime), CAST(N'2005-04-05T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'F', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, NULL, 1, N'34858', N'Charles', N'Wainwright', CAST(N'1950-06-30T00:00:00.000' AS DateTime), CAST(N'2014-02-25T00:00:00.000' AS DateTime), CAST(N'2014-02-25T00:00:00.000' AS DateTime), CAST(N'2014-02-25T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'M', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, NULL, 1, N'47572', N'Cody', N'Deoge', CAST(N'1990-11-11T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-27T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'M', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, NULL, 1, N'28474', N'Isabella', N'Davis', CAST(N'1977-05-20T00:00:00.000' AS DateTime), CAST(N'2010-01-05T00:00:00.000' AS DateTime), CAST(N'2010-01-10T00:00:00.000' AS DateTime), CAST(N'2010-01-05T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'F', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, NULL, 1, N'99273', N'Charlotte', N'Brown', CAST(N'1979-03-01T00:00:00.000' AS DateTime), CAST(N'2008-06-21T00:00:00.000' AS DateTime), CAST(N'2008-06-21T00:00:00.000' AS DateTime), CAST(N'2008-06-21T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'F', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Employee] ([Id], [SubGroupId], [EmploymentTypeId], [Number], [FirstName], [LastName], [BirthDate], [StartDate], [FirstWorkingDate], [ProposedStartDate], [ProposedEndDate], [Gender], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, NULL, NULL, N'23453', N'Marc', N'Davis', CAST(N'1978-09-12T00:00:00.000' AS DateTime), CAST(N'2014-01-10T00:00:00.000' AS DateTime), CAST(N'2014-01-12T00:00:00.000' AS DateTime), CAST(N'2014-01-10T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), N'M', N'System', N'System', CAST(N'2017-08-05T00:51:04.140' AS DateTime), CAST(N'2017-08-08T20:52:02.217' AS DateTime), CAST(N'2017-08-05T00:51:04.140' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Employee] OFF
SET IDENTITY_INSERT [dbo].[EmploymentType] ON 

INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'Part-Time', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Full-Time', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Temporary', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'Contract', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:03.110' AS DateTime), CAST(N'2017-08-05T00:51:03.110' AS DateTime), CAST(N'2017-08-05T00:51:03.110' AS DateTime), NULL)
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:03.110' AS DateTime), CAST(N'2017-08-05T00:51:03.110' AS DateTime), CAST(N'2017-08-05T00:51:03.110' AS DateTime), NULL)
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:55:33.570' AS DateTime), CAST(N'2017-08-05T00:55:33.570' AS DateTime), CAST(N'2017-08-05T00:55:33.570' AS DateTime), NULL)
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:59:06.400' AS DateTime), CAST(N'2017-08-05T00:59:06.400' AS DateTime), CAST(N'2017-08-05T00:59:06.400' AS DateTime), NULL)
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (9, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:41:54.540' AS DateTime), CAST(N'2017-08-08T20:41:54.540' AS DateTime), CAST(N'2017-08-08T20:41:54.540' AS DateTime), NULL)
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (10, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:46:31.967' AS DateTime), CAST(N'2017-08-08T20:46:31.967' AS DateTime), CAST(N'2017-08-08T20:46:31.967' AS DateTime), NULL)
INSERT [dbo].[EmploymentType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (11, N'Full-Time', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:52:01.343' AS DateTime), CAST(N'2017-08-08T20:52:01.343' AS DateTime), CAST(N'2017-08-08T20:52:01.343' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[EmploymentType] OFF
SET IDENTITY_INSERT [dbo].[Goa] ON 

INSERT [dbo].[Goa] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:51:00.840' AS DateTime), CAST(N'2017-08-05T00:51:00.840' AS DateTime), CAST(N'2017-08-05T00:51:00.840' AS DateTime), NULL)
INSERT [dbo].[Goa] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:55:31.783' AS DateTime), CAST(N'2017-08-05T00:55:31.787' AS DateTime), CAST(N'2017-08-05T00:55:31.787' AS DateTime), NULL)
INSERT [dbo].[Goa] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:59:04.470' AS DateTime), CAST(N'2017-08-05T00:59:04.470' AS DateTime), CAST(N'2017-08-05T00:59:04.470' AS DateTime), NULL)
INSERT [dbo].[Goa] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:41:53.140' AS DateTime), CAST(N'2017-08-08T20:41:53.140' AS DateTime), CAST(N'2017-08-08T20:41:53.140' AS DateTime), NULL)
INSERT [dbo].[Goa] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:46:31.780' AS DateTime), CAST(N'2017-08-08T20:46:31.780' AS DateTime), CAST(N'2017-08-08T20:46:31.780' AS DateTime), NULL)
INSERT [dbo].[Goa] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:51:59.580' AS DateTime), CAST(N'2017-08-08T20:51:59.580' AS DateTime), CAST(N'2017-08-08T20:51:59.580' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Goa] OFF
SET IDENTITY_INSERT [dbo].[Job] ON 

INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'Job 1', N'29847', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Job 2', N'82734', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Job 3', N'22342', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:51:01.390' AS DateTime), CAST(N'2017-08-05T00:51:01.390' AS DateTime), CAST(N'2017-08-05T00:51:01.390' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:55:32.477' AS DateTime), CAST(N'2017-08-05T00:55:32.477' AS DateTime), CAST(N'2017-08-05T00:55:32.477' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:59:05.150' AS DateTime), CAST(N'2017-08-05T00:59:05.150' AS DateTime), CAST(N'2017-08-05T00:59:05.150' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:41:53.460' AS DateTime), CAST(N'2017-08-08T20:41:53.460' AS DateTime), CAST(N'2017-08-08T20:41:53.460' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:46:31.817' AS DateTime), CAST(N'2017-08-08T20:46:31.817' AS DateTime), CAST(N'2017-08-08T20:46:31.817' AS DateTime), NULL)
INSERT [dbo].[Job] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (9, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:52:00.437' AS DateTime), CAST(N'2017-08-08T20:52:00.437' AS DateTime), CAST(N'2017-08-08T20:52:00.437' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Job] OFF
SET IDENTITY_INSERT [dbo].[JobFamily] ON 

INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'Job Family 1', N'73643', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Job Family 2', N'535678', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Job Family 3', N'65389', N'marc_davis', N'marc_Davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:51:01.717' AS DateTime), CAST(N'2017-08-05T00:51:01.717' AS DateTime), CAST(N'2017-08-05T00:51:01.717' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:55:32.823' AS DateTime), CAST(N'2017-08-05T00:55:32.823' AS DateTime), CAST(N'2017-08-05T00:55:32.823' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-05T00:59:05.467' AS DateTime), CAST(N'2017-08-05T00:59:05.467' AS DateTime), CAST(N'2017-08-05T00:59:05.467' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:41:53.770' AS DateTime), CAST(N'2017-08-08T20:41:53.770' AS DateTime), CAST(N'2017-08-08T20:41:53.770' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:46:31.910' AS DateTime), CAST(N'2017-08-08T20:46:31.910' AS DateTime), CAST(N'2017-08-08T20:46:31.910' AS DateTime), NULL)
INSERT [dbo].[JobFamily] ([Id], [Name], [Number], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (9, N'GOA 1', N'343456', N'System', N'System', CAST(N'2017-08-08T20:52:00.527' AS DateTime), CAST(N'2017-08-08T20:52:00.530' AS DateTime), CAST(N'2017-08-08T20:52:00.530' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[JobFamily] OFF
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([Id], [Name], [Building], [LocationTypeId], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Head Office', N'SEC East', 2, N'$', N'$', CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Location] ([Id], [Name], [Building], [LocationTypeId], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Head Office ', N'SEC West', 2, N'$', N'$', CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Location] ([Id], [Name], [Building], [LocationTypeId], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'Fort MacMurray - Main Office', N'123 Building A', 2, N'$', N'$', CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), CAST(N'2016-11-22T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Location] OFF
SET IDENTITY_INSERT [dbo].[LocationType] ON 

INSERT [dbo].[LocationType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Building', N'', N'Y', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[LocationType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Camp', NULL, N'Y', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[LocationType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'Home', NULL, N'Y', N'marc_davis', N'marc_davis', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[LocationType] OFF
SET IDENTITY_INSERT [dbo].[PayScaleType] ON 

INSERT [dbo].[PayScaleType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'Pay Scale 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:02.050' AS DateTime), CAST(N'2017-08-05T00:51:02.050' AS DateTime), CAST(N'2017-08-05T00:51:02.050' AS DateTime), NULL)
INSERT [dbo].[PayScaleType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Pay Scale 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:55:33.093' AS DateTime), CAST(N'2017-08-05T00:55:33.093' AS DateTime), CAST(N'2017-08-05T00:55:33.093' AS DateTime), NULL)
INSERT [dbo].[PayScaleType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Pay Scale 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:59:05.707' AS DateTime), CAST(N'2017-08-05T00:59:05.707' AS DateTime), CAST(N'2017-08-05T00:59:05.707' AS DateTime), NULL)
INSERT [dbo].[PayScaleType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'Pay Scale 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:41:53.883' AS DateTime), CAST(N'2017-08-08T20:41:53.883' AS DateTime), CAST(N'2017-08-08T20:41:53.883' AS DateTime), NULL)
INSERT [dbo].[PayScaleType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'Pay Scale 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:46:31.930' AS DateTime), CAST(N'2017-08-08T20:46:31.930' AS DateTime), CAST(N'2017-08-08T20:46:31.930' AS DateTime), NULL)
INSERT [dbo].[PayScaleType] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'Pay Scale 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:52:00.633' AS DateTime), CAST(N'2017-08-08T20:52:00.633' AS DateTime), CAST(N'2017-08-08T20:52:00.633' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[PayScaleType] OFF
SET IDENTITY_INSERT [dbo].[Position] ON 

INSERT [dbo].[Position] ([Id], [PositionDataSetId], [RevisedPositionId], [ManagingPositionId], [ManagingPositionNumber], [JobId], [JobFamilyId], [GoaId], [CostCentreId], [HomeCostCentreId], [FlowToCostCentreId], [LocationId], [WorkLocationId], [SubGroupId], [EmploymentTypeId], [PersonnelSubAreaId], [PayScaleTypeId], [WorkScheduleId], [EmployeeId], [HeldByEmployeeNumber], [Title], [Number], [PayScaleGroupMin], [PayScaleGroupMax], [PayScaleLevelMin], [PayScaleLevelMax], [OvertimeExempt], [HardToRecruit], [DoesCountAsHeadCount], [IsCriticalSkill], [PlannedStartDate], [PlannedEndDate], [PlanningSalary], [EmploymentPercentage], [FullTimeEquivalencyPercentage], [PlanningSalaryBand], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate], [RevisedPosition_Id]) VALUES (6, 6, NULL, NULL, NULL, 4, 4, NULL, 7, 8, NULL, NULL, NULL, 4, 2, NULL, 1, 3, 7, NULL, N'Software Developer', N'727263', N'9', N'13', N'9', N'15', 0, 0, 1, 1, CAST(N'2014-01-01T00:00:00.000' AS DateTime), CAST(N'2099-01-01T00:00:00.000' AS DateTime), CAST(125000.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 12, N'System', N'System', CAST(N'2017-08-08T20:52:09.133' AS DateTime), CAST(N'2017-08-08T20:52:10.943' AS DateTime), CAST(N'2017-08-08T20:52:11.923' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Position] OFF
SET IDENTITY_INSERT [dbo].[PositionDataSets] ON 

INSERT [dbo].[PositionDataSets] ([Id], [AsOfDate], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, CAST(N'2017-08-05T00:00:00.000' AS DateTime), N'System', N'System', CAST(N'2017-08-05T00:51:04.457' AS DateTime), CAST(N'2017-08-05T00:59:02.000' AS DateTime), CAST(N'2017-08-05T00:51:04.457' AS DateTime), CAST(N'2017-08-05T00:59:02.000' AS DateTime))
INSERT [dbo].[PositionDataSets] ([Id], [AsOfDate], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, CAST(N'2017-08-05T00:00:00.000' AS DateTime), N'System', N'System', CAST(N'2017-08-05T00:55:35.357' AS DateTime), CAST(N'2017-08-05T00:55:35.357' AS DateTime), CAST(N'2017-08-05T00:55:35.357' AS DateTime), NULL)
INSERT [dbo].[PositionDataSets] ([Id], [AsOfDate], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, CAST(N'2017-08-05T00:00:00.000' AS DateTime), N'System', N'System', CAST(N'2017-08-05T00:59:08.030' AS DateTime), CAST(N'2017-08-08T20:41:51.000' AS DateTime), CAST(N'2017-08-05T00:59:08.030' AS DateTime), CAST(N'2017-08-08T20:41:51.000' AS DateTime))
INSERT [dbo].[PositionDataSets] ([Id], [AsOfDate], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, CAST(N'2017-08-08T00:00:00.000' AS DateTime), N'System', N'System', CAST(N'2017-08-08T20:41:55.590' AS DateTime), CAST(N'2017-08-08T20:51:58.000' AS DateTime), CAST(N'2017-08-08T20:41:55.590' AS DateTime), CAST(N'2017-08-08T20:51:58.000' AS DateTime))
INSERT [dbo].[PositionDataSets] ([Id], [AsOfDate], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, CAST(N'2017-08-08T00:00:00.000' AS DateTime), N'System', N'System', CAST(N'2017-08-08T20:46:32.020' AS DateTime), CAST(N'2017-08-08T20:46:32.020' AS DateTime), CAST(N'2017-08-08T20:46:32.020' AS DateTime), NULL)
INSERT [dbo].[PositionDataSets] ([Id], [AsOfDate], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, CAST(N'2017-08-08T00:00:00.000' AS DateTime), N'System', N'System', CAST(N'2017-08-08T20:52:02.313' AS DateTime), CAST(N'2017-08-08T20:52:02.313' AS DateTime), CAST(N'2017-08-08T20:52:02.313' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[PositionDataSets] OFF
SET IDENTITY_INSERT [dbo].[SourceFileColumnMappings] ON 

INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, 1, N'BirthDate', 1, N'A', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, 1, N'FirstName', 2, N'B', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, 1, N'FirstWorkingDate', 3, N'C', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, 1, N'Gender', 4, N'D', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, 1, N'LastName', 5, N'E', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, 1, N'EmployeeNumber', 6, N'F', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, 1, N'ProposedEndDate', 7, N'G', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (9, 1, N'ProposedStartDate', 8, N'H', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (10, 1, N'StartDate', 9, N'I', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (11, 1, N'CostCentreName', 10, N'J', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (12, 1, N'CostCentreNumber', 11, N'K', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (13, 1, N'HomeCostCentreName', 12, N'L', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (14, 1, N'HomeCostCentreNumber', 13, N'M', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (15, 1, N'FlowToCostCentreName', 14, N'N', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (16, 1, N'FlowToCostCentreNumber', 15, N'O', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (17, 1, N'GoaName', 16, N'P', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (18, 1, N'GoaNumber', 17, N'Q', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (19, 1, N'JobName', 18, N'R', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (20, 1, N'JobNumber', 19, N'S', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (21, 1, N'JobFamilyName', 20, N'T', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (22, 1, N'JobFamilyNumber', 21, N'U', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (23, 1, N'LocationName', 22, N'V', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (24, 1, N'LocationNumber', 23, N'W', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (25, 1, N'WorkLocationName', 24, N'X', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (26, 1, N'WorkLocationNumber', 25, N'Y', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (27, 1, N'EmploymentPercentage', 26, N'Z', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (28, 1, N'EmploymentType', 27, N'AA', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (29, 1, N'DoesCountAsHeadCount', 28, N'AB', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (30, 1, N'FullTimeEquivalencyPercentage', 29, N'AC', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (31, 1, N'HardToRecruit', 30, N'AD', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (32, 1, N'IsCriticalSkill', 31, N'AE', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (33, 1, N'Number', 32, N'AF', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (34, 1, N'OvertimeExempt', 33, N'AG', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (35, 1, N'PayScaleGroupMax', 34, N'AH', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (36, 1, N'PayScaleGroupMin', 35, N'AI', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (37, 1, N'PayScaleLevelMax', 36, N'AJ', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (38, 1, N'PayScaleLevelMin', 37, N'AK', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (39, 1, N'PayScaleType', 38, N'AL', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (40, 1, N'PlannedEndDate', 39, N'AM', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (41, 1, N'PlannedStartDate', 40, N'AN', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (42, 1, N'PersonnelSubArea', 41, N'AO', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (43, 1, N'PlanningSalary', 42, N'AP', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (44, 1, N'PlanningSalaryBand', 43, N'AQ', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (45, 1, N'SubGroup', 44, N'AR', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (46, 1, N'Title', 45, N'AS', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[SourceFileColumnMappings] ([Id], [DataSourceFileId], [FieldName], [ColumnIndex], [ColumnLetter], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (47, 1, N'WorkSchedule', 46, N'AT', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SourceFileColumnMappings] OFF
SET IDENTITY_INSERT [dbo].[SubGroup] ON 

INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'Test 1', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'Test 2', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'Test 3', NULL, N'Y', N's', N's', CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime), CAST(N'2017-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:02.847' AS DateTime), CAST(N'2017-08-05T00:51:02.847' AS DateTime), CAST(N'2017-08-05T00:51:02.847' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:03.290' AS DateTime), CAST(N'2017-08-05T00:51:03.290' AS DateTime), CAST(N'2017-08-05T00:51:03.290' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:03.290' AS DateTime), CAST(N'2017-08-05T00:51:03.290' AS DateTime), CAST(N'2017-08-05T00:51:03.290' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:55:33.343' AS DateTime), CAST(N'2017-08-05T00:55:33.343' AS DateTime), CAST(N'2017-08-05T00:55:33.343' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:55:33.790' AS DateTime), CAST(N'2017-08-05T00:55:33.790' AS DateTime), CAST(N'2017-08-05T00:55:33.790' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (9, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:59:06.133' AS DateTime), CAST(N'2017-08-05T00:59:06.133' AS DateTime), CAST(N'2017-08-05T00:59:06.133' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (10, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:59:06.610' AS DateTime), CAST(N'2017-08-05T00:59:06.610' AS DateTime), CAST(N'2017-08-05T00:59:06.610' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (11, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:41:54.083' AS DateTime), CAST(N'2017-08-08T20:41:54.083' AS DateTime), CAST(N'2017-08-08T20:41:54.083' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (12, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:41:54.663' AS DateTime), CAST(N'2017-08-08T20:41:54.663' AS DateTime), CAST(N'2017-08-08T20:41:54.663' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (13, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:46:31.950' AS DateTime), CAST(N'2017-08-08T20:46:31.950' AS DateTime), CAST(N'2017-08-08T20:46:31.950' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (14, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:46:31.980' AS DateTime), CAST(N'2017-08-08T20:46:31.980' AS DateTime), CAST(N'2017-08-08T20:46:31.980' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (15, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:52:00.733' AS DateTime), CAST(N'2017-08-08T20:52:00.733' AS DateTime), CAST(N'2017-08-08T20:52:00.733' AS DateTime), NULL)
INSERT [dbo].[SubGroup] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (16, N'Sub Group 1', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:52:01.427' AS DateTime), CAST(N'2017-08-08T20:52:01.427' AS DateTime), CAST(N'2017-08-08T20:52:01.427' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[SubGroup] OFF
SET IDENTITY_INSERT [dbo].[WorkSchedule] ON 

INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (1, N'5x8', NULL, N'Y', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (2, N'4x10', NULL, N'Y', N'$', N'$', CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), CAST(N'2017-04-27T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (3, N'8x5', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:51:01.053' AS DateTime), CAST(N'2017-08-05T00:51:01.053' AS DateTime), CAST(N'2017-08-05T00:51:01.053' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (4, N'8x5', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:55:32.237' AS DateTime), CAST(N'2017-08-05T00:55:32.237' AS DateTime), CAST(N'2017-08-05T00:55:32.237' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (5, N'8x5', NULL, NULL, N'System', N'System', CAST(N'2017-08-05T00:59:04.893' AS DateTime), CAST(N'2017-08-05T00:59:04.893' AS DateTime), CAST(N'2017-08-05T00:59:04.893' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (6, N'8x5', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:41:53.357' AS DateTime), CAST(N'2017-08-08T20:41:53.357' AS DateTime), CAST(N'2017-08-08T20:41:53.357' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (7, N'8x5', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:46:31.793' AS DateTime), CAST(N'2017-08-08T20:46:31.793' AS DateTime), CAST(N'2017-08-08T20:46:31.793' AS DateTime), NULL)
INSERT [dbo].[WorkSchedule] ([Id], [Name], [Description], [IsActive], [ModifiedBy], [CreatedBy], [CreatedDate], [ModifiedDate], [EffectiveFromDate], [EffectiveToDate]) VALUES (8, N'8x5', NULL, NULL, N'System', N'System', CAST(N'2017-08-08T20:52:00.113' AS DateTime), CAST(N'2017-08-08T20:52:00.113' AS DateTime), CAST(N'2017-08-08T20:52:00.113' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[WorkSchedule] OFF
ALTER TABLE [dbo].[ApprovalResult] ADD  CONSTRAINT [DF_ApprovalResult_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[ApprovalStatus] ADD  CONSTRAINT [DF_ApprovalStatus_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employee_dbo.EmploymentType_EmploymentTypeId] FOREIGN KEY([EmploymentTypeId])
REFERENCES [dbo].[EmploymentType] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_dbo.Employee_dbo.EmploymentType_EmploymentTypeId]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Employee_dbo.SubGroup_SubGroupId] FOREIGN KEY([SubGroupId])
REFERENCES [dbo].[SubGroup] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_dbo.Employee_dbo.SubGroup_SubGroupId]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Location_dbo.LocationType_LocationTypeId] FOREIGN KEY([LocationTypeId])
REFERENCES [dbo].[LocationType] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_dbo.Location_dbo.LocationType_LocationTypeId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.CostCentre_CostCentreId] FOREIGN KEY([CostCentreId])
REFERENCES [dbo].[CostCentre] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.CostCentre_CostCentreId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.CostCentre_FlowToCostCentreId] FOREIGN KEY([FlowToCostCentreId])
REFERENCES [dbo].[CostCentre] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.CostCentre_FlowToCostCentreId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.CostCentre_HomeCostCentreId] FOREIGN KEY([HomeCostCentreId])
REFERENCES [dbo].[CostCentre] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.CostCentre_HomeCostCentreId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.EmploymentType_EmploymentTypeId] FOREIGN KEY([EmploymentTypeId])
REFERENCES [dbo].[EmploymentType] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.EmploymentType_EmploymentTypeId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.Goa_GoaId] FOREIGN KEY([GoaId])
REFERENCES [dbo].[Goa] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.Goa_GoaId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.JobFamily_JobFamilyId] FOREIGN KEY([JobFamilyId])
REFERENCES [dbo].[JobFamily] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.JobFamily_JobFamilyId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.Location_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.Location_LocationId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.Location_WorkLocationId] FOREIGN KEY([WorkLocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.Location_WorkLocationId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.PayScaleType_PayScaleTypeId] FOREIGN KEY([PayScaleTypeId])
REFERENCES [dbo].[PayScaleType] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.PayScaleType_PayScaleTypeId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.PersonnelSubArea_PersonnelSubAreaId] FOREIGN KEY([PersonnelSubAreaId])
REFERENCES [dbo].[PersonnelSubArea] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.PersonnelSubArea_PersonnelSubAreaId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.Position_ManagingPositionId] FOREIGN KEY([ManagingPositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.Position_ManagingPositionId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.PositionDataSets_PositionDataSetId] FOREIGN KEY([PositionDataSetId])
REFERENCES [dbo].[PositionDataSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.PositionDataSets_PositionDataSetId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.SubGroup_SubGroupId] FOREIGN KEY([SubGroupId])
REFERENCES [dbo].[SubGroup] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.SubGroup_SubGroupId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.WorkSchedule_WorkScheduleId] FOREIGN KEY([WorkScheduleId])
REFERENCES [dbo].[WorkSchedule] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.WorkSchedule_WorkScheduleId]
GO
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_Position_Position] FOREIGN KEY([Id])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_Position_Position]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.CostCentre_CostCentreId] FOREIGN KEY([CostCentreId])
REFERENCES [dbo].[CostCentre] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.CostCentre_CostCentreId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.CostCentre_FlowToCostCentreId] FOREIGN KEY([FlowToCostCentreId])
REFERENCES [dbo].[CostCentre] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.CostCentre_FlowToCostCentreId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.CostCentre_HomeCostCentreId] FOREIGN KEY([HomeCostCentreId])
REFERENCES [dbo].[CostCentre] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.CostCentre_HomeCostCentreId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.Employee_EmployeeId] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.Employee_EmployeeId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.EmploymentType_EmploymentTypeId] FOREIGN KEY([EmploymentTypeId])
REFERENCES [dbo].[EmploymentType] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.EmploymentType_EmploymentTypeId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.Goa_GoaId] FOREIGN KEY([GoaId])
REFERENCES [dbo].[Goa] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.Goa_GoaId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.Job_JobId] FOREIGN KEY([JobId])
REFERENCES [dbo].[Job] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.Job_JobId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.JobFamily_JobFamilyId] FOREIGN KEY([JobFamilyId])
REFERENCES [dbo].[JobFamily] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.JobFamily_JobFamilyId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.Location_LocationId] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.Location_LocationId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.Location_WorkLocationId] FOREIGN KEY([WorkLocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.Location_WorkLocationId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.PayScaleType_PayScaleTypeId] FOREIGN KEY([PayScaleTypeId])
REFERENCES [dbo].[PayScaleType] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.PayScaleType_PayScaleTypeId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.PersonnelSubArea_PersonnelSubAreaId] FOREIGN KEY([PersonnelSubAreaId])
REFERENCES [dbo].[PersonnelSubArea] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.PersonnelSubArea_PersonnelSubAreaId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.PositionDataSets_PositionDataSetId] FOREIGN KEY([PositionDataSetId])
REFERENCES [dbo].[PositionDataSets] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.PositionDataSets_PositionDataSetId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.SubGroup_SubGroupId] FOREIGN KEY([SubGroupId])
REFERENCES [dbo].[SubGroup] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.SubGroup_SubGroupId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RevisedPosition_dbo.WorkSchedule_WorkScheduleId] FOREIGN KEY([WorkScheduleId])
REFERENCES [dbo].[WorkSchedule] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_dbo.RevisedPosition_dbo.WorkSchedule_WorkScheduleId]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_RevisedPosition_ManagingPosition] FOREIGN KEY([ManagingPositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_RevisedPosition_ManagingPosition]
GO
ALTER TABLE [dbo].[RevisedPosition]  WITH CHECK ADD  CONSTRAINT [FK_RevisedPosition_Position] FOREIGN KEY([SourcePositionId])
REFERENCES [dbo].[Position] ([Id])
GO
ALTER TABLE [dbo].[RevisedPosition] CHECK CONSTRAINT [FK_RevisedPosition_Position]
GO
ALTER TABLE [dbo].[RevisionApprovals]  WITH CHECK ADD  CONSTRAINT [FK_RevisionApprovals_ApprovalStatus] FOREIGN KEY([ApprovalStatusId])
REFERENCES [dbo].[ApprovalStatus] ([Id])
GO
ALTER TABLE [dbo].[RevisionApprovals] CHECK CONSTRAINT [FK_RevisionApprovals_ApprovalStatus]
GO
ALTER TABLE [dbo].[RevisionApprovals]  WITH CHECK ADD  CONSTRAINT [FK_RevisionApprovals_RevisedPosition] FOREIGN KEY([RevisedPositionId])
REFERENCES [dbo].[RevisedPosition] ([Id])
GO
ALTER TABLE [dbo].[RevisionApprovals] CHECK CONSTRAINT [FK_RevisionApprovals_RevisedPosition]
GO
ALTER TABLE [dbo].[RevisionApprovals]  WITH CHECK ADD  CONSTRAINT [FK_RevisionApprovals_RevisionApprovals] FOREIGN KEY([ApprovalResultId])
REFERENCES [dbo].[ApprovalResult] ([Id])
GO
ALTER TABLE [dbo].[RevisionApprovals] CHECK CONSTRAINT [FK_RevisionApprovals_RevisionApprovals]
GO
ALTER TABLE [dbo].[SourceFileColumnMappings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SourceFileColumnMappings_dbo.DataSourceFileConfigurations_DataSourceFileId] FOREIGN KEY([DataSourceFileId])
REFERENCES [dbo].[DataSourceFileConfigurations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SourceFileColumnMappings] CHECK CONSTRAINT [FK_dbo.SourceFileColumnMappings_dbo.DataSourceFileConfigurations_DataSourceFileId]
GO
