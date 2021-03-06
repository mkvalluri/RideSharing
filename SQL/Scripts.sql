USE [RideSharing]
GO
/****** Object:  Table [dbo].[Scheduler]    Script Date: 5/2/2016 14:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scheduler](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StartRange] [datetime] NOT NULL,
	[EndRange] [datetime] NOT NULL,
	[PoolSize] [int] NOT NULL,
	[NumberOfSimulations] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[StartTime] [datetime] NOT NULL,
	[EndTime] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Simulations]    Script Date: 5/2/2016 14:57:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Simulations](
	[Id] [bigint] NOT NULL,
	[PoolStartTime] [datetime] NOT NULL,
	[PoolEndTime] [datetime] NOT NULL,
	[PoolSize] [int] NOT NULL,
	[SimulationStartTime] [datetime] NOT NULL,
	[SimulationEndTime] [datetime] NOT NULL,
	[PercentageWillingToRideShare] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TripDetails]    Script Date: 5/2/2016 14:57:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TripDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[SimulationId] [bigint] NOT NULL,
	[CabId] [bigint] NOT NULL,
	[RideId] [bigint] NOT NULL,
	[SequenceNum] [int] NOT NULL,
	[Destination] [geography] NOT NULL,
	[DistanceTravelled] [bigint] NOT NULL,
	[PickupDateTime] [datetime] NOT NULL,
	[DropoffDateTime] [datetime] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
