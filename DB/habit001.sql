USE [MSSQLLocalDB]
GO
/****** Object:  Table [dbo].[HabitLog]    Script Date: 7/18/2018 2:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HabitLog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[HabitId] [int] NULL,
	[DoneDate] [datetime] NULL,
	[ChangeDescription] [varchar](max) NULL,
	[OldValue] [varchar](max) NULL,
	[NewValue] [varchar](max) NULL,
 CONSTRAINT [PK_HabitLogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habits]    Script Date: 7/18/2018 2:10:02 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habits](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](max) NOT NULL,
	[Image] [varchar](max) NULL,
	[Description] [varchar](max) NULL,
	[Done] [bit] NOT NULL,
	[DoneDate] [datetime] NULL,
	[HabitTime] [int] NULL,
	[HabitLogCount] [int] DEFAULT(0),
 CONSTRAINT [PK_Habits] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
