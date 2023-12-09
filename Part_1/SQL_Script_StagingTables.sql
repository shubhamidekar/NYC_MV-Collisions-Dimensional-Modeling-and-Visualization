USE [NYCCollisions]
GO

/****** Object:  Table [dbo].[stg_nyc_mv_collisions_BigQuery]    Script Date: 06-08-2023 17:04:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_nyc_mv_collisions_BigQuery](
	[COLLISION_ID] [bigint] NOT NULL,
	[collision_dt] [datetime] NULL,
	[collision_day] [int] NULL,
	[collision_time] [varchar](8) NULL,
	[collision_hour] [int] NULL,
	[collision_dayoftheweek] [int] NULL,
	[borough] [varchar](40) NULL,
	[contributing_factor_vehicle_1] [varchar](256) NULL,
	[contributing_factor_vehicle_2] [varchar](256) NULL,
	[contributing_factor_vehicle_3] [varchar](256) NULL,
	[contributing_factor_vehicle_4] [varchar](256) NULL,
	[contributing_factor_vehicle_5] [varchar](256) NULL,
	[cross_street_name] [varchar](40) NULL,
	[latitude] [decimal](24, 6) NULL,
	[longitude] [decimal](24, 6) NULL,
	[location] [varchar](256) NULL,
	[number_of_cyclist_injured] [int] NULL,
	[number_of_cyclist_killed] [int] NULL,
	[number_of_motorist_injured] [int] NULL,
	[number_of_motorist_killed] [int] NULL,
	[number_of_pedestrians_injured] [int] NULL,
	[number_of_pedestrians_killed] [int] NULL,
	[number_of_persons_injured] [int] NULL,
	[number_of_persons_killed] [int] NULL,
	[off_street_name] [varchar](40) NULL,
	[on_street_name] [varchar](40) NULL,
	[vehicle_type_code1] [varchar](80) NULL,
	[vehicle_type_code2] [varchar](80) NULL,
	[vehicle_type_code_3] [varchar](80) NULL,
	[vehicle_type_code_4] [varchar](80) NULL,
	[vehicle_type_code_5] [varchar](80) NULL,
	[zip_code] [varchar](40) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_JobID] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[COLLISION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


USE [NYCCollisions]
GO

/****** Object:  Table [dbo].[stg_persons]    Script Date: 06-08-2023 17:05:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_persons](
	[UNIQUE_ID] [bigint] NOT NULL,
	[COLLISION_ID] [bigint] NULL,
	[CRASH_DATE] [date] NULL,
	[CRASH_TIME] [time](0) NULL,
	[PERSON_ID] [varchar](80) NULL,
	[PERSON_TYPE] [varchar](80) NULL,
	[PERSON_INJURY] [varchar](80) NULL,
	[VEHICLE_ID] [varchar](80) NULL,
	[PERSON_AGE] [int] NULL,
	[EJECTION] [varchar](80) NULL,
	[EMOTIONAL_STATUS] [varchar](80) NULL,
	[BODILY_INJURY] [varchar](80) NULL,
	[POSITION_IN_VEHICLE] [varchar](255) NULL,
	[SAFETY_EQUIPMENT] [varchar](255) NULL,
	[PED_LOCATION] [varchar](255) NULL,
	[PED_ACTION] [varchar](255) NULL,
	[COMPLAINT] [varchar](255) NULL,
	[PED_ROLE] [varchar](255) NULL,
	[CONTRIBUTING_FACTOR_1] [varchar](255) NULL,
	[CONTRIBUTING_FACTOR_2] [varchar](255) NULL,
	[PERSON_SEX] [varchar](10) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_JobID] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[UNIQUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

USE [NYCCollisions]
GO

/****** Object:  Table [dbo].[stg_vehicles]    Script Date: 06-08-2023 17:05:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[stg_vehicles](
	[UNIQUE_ID] [int] NOT NULL,
	[COLLISION_ID] [int] NULL,
	[CRASH_DATE] [datetime] NULL,
	[CRASH_TIME] [datetime] NULL,
	[VEHICLE_ID] [varchar](80) NULL,
	[STATE_REGISTRATION] [varchar](80) NULL,
	[VEHICLE_TYPE] [varchar](80) NULL,
	[VEHICLE_MAKE] [varchar](80) NULL,
	[VEHICLE_MODEL] [varchar](80) NULL,
	[VEHICLE_YEAR] [varchar](80) NULL,
	[TRAVEL_DIRECTION] [varchar](80) NULL,
	[VEHICLE_OCCUPANTS] [int] NULL,
	[DRIVER_SEX] [varchar](255) NULL,
	[DRIVER_LICENSE_STATUS] [varchar](255) NULL,
	[DRIVER_LICENSE_JURISDICTION] [varchar](255) NULL,
	[PRE_CRASH] [varchar](255) NULL,
	[POINT_OF_IMPACT] [varchar](255) NULL,
	[VEHICLE_DAMAGE] [varchar](255) NULL,
	[VEHICLE_DAMAGE_1] [varchar](255) NULL,
	[VEHICLE_DAMAGE_2] [varchar](255) NULL,
	[VEHICLE_DAMAGE_3] [varchar](255) NULL,
	[PUBLIC_PROPERTY_DAMAGE] [varchar](1024) NULL,
	[PUBLIC_PROPERTY_DAMAGE_TYPE] [varchar](1024) NULL,
	[CONTRIBUTING_FACTOR_1] [varchar](255) NULL,
	[CONTRIBUTING_FACTOR_2] [varchar](255) NULL,
	[DI_CreateDate] [datetime] NULL,
	[DI_JobID] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[UNIQUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

