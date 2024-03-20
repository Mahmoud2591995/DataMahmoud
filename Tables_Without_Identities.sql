USE [BogCooperationTraining]
GO
/****** Object:  Table [dbo].[ApproveRegisterDatas]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApproveRegisterDatas](
	[Id] [int]  NOT NULL,
	[TraineeId] [int] NOT NULL,
	[Approve] [bit] NOT NULL,
	[ApproveDate] [datetime] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ApproveRegisterDatas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupAddressCities]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupAddressCities](
	[AddressCityId] [int]  NOT NULL,
	[AddressCity] [nvarchar](50) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupAddressCities] PRIMARY KEY CLUSTERED 
(
	[AddressCityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupAverageTypes]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupAverageTypes](
	[AverageTypeId] [int]  NOT NULL,
	[AverageTypeName] [nvarchar](50) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupAverageTypes] PRIMARY KEY CLUSTERED 
(
	[AverageTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupCities]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupCities](
	[CityId] [int]  NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupCities] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupDegrees]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupDegrees](
	[DegreeId] [int]  NOT NULL,
	[DegreeName] [nvarchar](50) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupDegrees] PRIMARY KEY CLUSTERED 
(
	[DegreeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupDepartments]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupDepartments](
	[DepartmentId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ERPDepartmentId] [int] NOT NULL,
	[CityId] [int] NOT NULL,
	[SiteId] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupDepartments] PRIMARY KEY CLUSTERED 
(
	[DepartmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupDepartmentSpecialities]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupDepartmentSpecialities](
	[Id] [int]  NOT NULL,
	[DepartmantId] [int] NOT NULL,
	[SpecialityId] [int] NOT NULL,
	[CreatedBy] [int] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Quota] [int] NOT NULL,
	[ActiveStatus] [bit] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupDepartmentSpecialities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupQuestionType]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupQuestionType](
	[TypeId] [int] NOT NULL,
	[TypeText] [nvarchar](50) NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupQuestionType] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupRequestStatus]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupRequestStatus](
	[RequestStatusId] [int]  NOT NULL,
	[RequestStatus] [nvarchar](500) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupRequestStatus] PRIMARY KEY CLUSTERED 
(
	[RequestStatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupSites]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupSites](
	[SiteId] [int]  NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[ERPSiteId] [int] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupSites] PRIMARY KEY CLUSTERED 
(
	[SiteId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupSpecialities]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupSpecialities](
	[SpecialityId] [int]  NOT NULL,
	[SpecialityName] [nvarchar](50) NOT NULL,
	[IsMale] [bit] NOT NULL,
	[DegreeId] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupSpecialities] PRIMARY KEY CLUSTERED 
(
	[SpecialityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupTrainingCalcMethods]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupTrainingCalcMethods](
	[Id] [int] NOT NULL,
	[CalculationMethod] [nvarchar](150) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupTrainingCalcMethods] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupTrainingSemesters]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupTrainingSemesters](
	[SemesterId] [int]  NOT NULL,
	[SemesterName] [nvarchar](50) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupTrainingSemesters] PRIMARY KEY CLUSTERED 
(
	[SemesterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupTrainingYears]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupTrainingYears](
	[YearId] [int]  NOT NULL,
	[TrainingYearId] [nvarchar](50) NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupTrainingYears] PRIMARY KEY CLUSTERED 
(
	[YearId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupUniversities]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupUniversities](
	[UniversityId] [int]  NOT NULL,
	[UniversityName] [nvarchar](50) NOT NULL,
	[DegreeId] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupUniversities] PRIMARY KEY CLUSTERED 
(
	[UniversityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupUserRoles]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupUserRoles](
	[Id] [int] NOT NULL,
	[UserTypeName] [nvarchar](50) NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_LookupUserTypes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int]  NOT NULL,
	[QuestionText] [nvarchar](50) NULL,
	[TypeId] [int] NOT NULL,
	[IsActive] [bit] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionOptions]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionOptions](
	[QuestionOptionID] [int]  NOT NULL,
	[Text] [nvarchar](50) NULL,
	[QuestionID] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_QuestionOptions] PRIMARY KEY CLUSTERED 
(
	[QuestionOptionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Survey]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Survey](
	[SurveyID] [int]  NOT NULL,
	[SurveyName] [nvarchar](50) NULL,
	[IsMandatory] [bit] NULL,
	[CreatedB] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED 
(
	[SurveyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyAnswer]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyAnswer](
	[AnswerID] [int]  NOT NULL,
	[QuestionID] [int] NULL,
	[TraineeID] [int] NULL,
	[QuestionOptionID] [int] NULL,
	[SurveyID] [int] NULL,
	[AnswerText] [nvarchar](50) NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[AnswerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SurveyQuestion]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyQuestion](
	[SurveyQuestionID] [int]  NOT NULL,
	[SurveyID] [int] NOT NULL,
	[QuestionID] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_SurveyQuestion] PRIMARY KEY CLUSTERED 
(
	[SurveyQuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraineeAttendances]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeAttendances](
	[Id] [int]  NOT NULL,
	[TraineeId] [int] NOT NULL,
	[TraineeRequestId] [int] NOT NULL,
	[AttendanceDate] [datetime] NOT NULL,
	[CheckInTime] [time](7) NULL,
	[CheckInBy] [nvarchar](50) NULL,
	[CheckOutTime] [time](7) NULL,
	[CheckOutBy] [nvarchar](50) NULL,
	[IsAbsent] [bit] NOT NULL,
	[SessionsHours] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraineeAttendances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraineeCertificate]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeCertificate](
	[Id] [int]  NOT NULL,
	[TraineeId] [int] NOT NULL,
	[RequestId] [int] NOT NULL,
	[Type] [int] NOT NULL,
	[CertificateNumber] [decimal](20, 0) NOT NULL,
	[IssuedBy] [int] NOT NULL,
	[IssuedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraineeCertificate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraineeInfoPerRequest]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeInfoPerRequest](
	[TraineeId] [int] NOT NULL,
	[RequestId] [int] NOT NULL,
	[TraineeFullName] [nvarchar](max) NULL,
	[TraineeGenderName] [nvarchar](max) NULL,
	[TraineeGender] [bit] NULL,
	[TraineeCityName] [nvarchar](max) NULL,
	[TraineeIDNumber] [nvarchar](max) NULL,
	[TraineeRegisterDate] [datetime] NULL,
	[TraineeLastUpdatedDate] [datetime] NULL,
	[TraineeMobile] [nvarchar](max) NULL,
	[TraineeEmail] [nvarchar](max) NULL,
	[RequestStatusId] [int] NULL,
	[RequestStatus] [nvarchar](max) NULL,
	[RequestCreatedDate] [datetime] NULL,
	[RequestStartDate] [datetime] NULL,
	[RequestEndDate] [datetime] NULL,
	[TrainingPeriodId] [int] NULL,
	[TrainingPeriod] [nvarchar](max) NULL,
	[PeriodStartDate] [datetime] NULL,
	[PeriodEndDate] [datetime] NULL,
	[TotalTrainingPeriod] [int] NULL,
	[CalculationMethodId] [int] NULL,
	[DegreeName] [nvarchar](max) NULL,
	[SpecialityId] [int] NULL,
	[SpecialityName] [nvarchar](max) NULL,
	[AverageTypeName] [nvarchar](max) NULL,
	[UniversityId] [int] NULL,
	[UniversityName] [nvarchar](max) NULL,
	[Faculty] [nvarchar](max) NULL,
	[Average] [decimal](18, 2) NULL,
	[SupervisorName] [nvarchar](max) NULL,
	[SupervisorMobile] [nvarchar](max) NULL,
	[SupervisorEmail] [nvarchar](max) NULL,
	[TraineeQualificationsId] [int] NULL,
	[DepartmentId] [int] NULL,
	[RefuseReasons] [nvarchar](max) NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraineeInfo] PRIMARY KEY CLUSTERED 
(
	[TraineeId] ASC,
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraineeQualifications]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeQualifications](
	[Id] [int]  NOT NULL,
	[TraineeId] [int] NOT NULL,
	[DegreeId] [int] NOT NULL,
	[SpecialityId] [int] NOT NULL,
	[AverageTypeId] [int] NOT NULL,
	[UniversityId] [int] NOT NULL,
	[Faculty] [nvarchar](150) NOT NULL,
	[Average] [decimal](18, 2) NOT NULL,
	[LastModifiedDate] [datetime] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraineeQualifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraineeRequestDesires]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeRequestDesires](
	[Id] [int]  NOT NULL,
	[DeptId] [int] NOT NULL,
	[ChoiceOrder] [int] NOT NULL,
	[TraineeId] [int] NOT NULL,
	[RequestId] [int] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraineeRequestDesires] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TraineeRequests]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TraineeRequests](
	[RequestId] [int]  NOT NULL,
	[TraineeId] [int] NOT NULL,
	[TrainingPeriodId] [int] NOT NULL,
	[SupervisorName] [nvarchar](250) NOT NULL,
	[SupervisorMobile] [nvarchar](10) NOT NULL,
	[SupervisorEmail] [nvarchar](50) NOT NULL,
	[RequestStatusId] [int] NOT NULL,
	[TrainingStartDate] [datetime] NOT NULL,
	[TrainingEndDate] [datetime] NOT NULL,
	[DepartmentId] [int] NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[IsAttended] [bit] NULL,
	[AttendanceDate] [datetime] NULL,
	[AttendanceBy] [nvarchar](50) NULL,
	[barcode] [nvarchar](12) NULL,
	[CityId] [int] NULL,
	[TotalTrainingPeriod] [int] NOT NULL,
	[RefuseReasons] [nvarchar](max) NULL,
	[CalculationMethodId] [int] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TraineeRequests] PRIMARY KEY CLUSTERED 
(
	[RequestId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trainees]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainees](
	[TraineeId] [int]  NOT NULL,
	[Gender] [bit] NOT NULL,
	[IDNumber] [nvarchar](50) NOT NULL,
	[FName] [nvarchar](50) NOT NULL,
	[SName] [nvarchar](50) NOT NULL,
	[ThName] [nvarchar](50) NOT NULL,
	[LName] [nvarchar](50) NOT NULL,
	[AddressCityId] [int] NOT NULL,
	[RegisterDate] [datetime] NOT NULL,
	[Mobile] [nvarchar](10) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedBy] [nvarchar](50) NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[LegacyData] [bit] NULL,
	[SSOCode] [nvarchar](100) NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Trainees] PRIMARY KEY CLUSTERED 
(
	[TraineeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrainingPeriods]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingPeriods](
	[TrainingPeriodId] [int]  NOT NULL,
	[Description] [nvarchar](250) NOT NULL,
	[YearId] [int] NOT NULL,
	[SemesterId] [int] NOT NULL,
	[RegisterStartDate] [datetime] NOT NULL,
	[RegisterEndDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[TrainingStartDate] [datetime] NOT NULL,
	[TrainingEndDate] [datetime] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[LastUpdatedBy] [nvarchar](50) NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[Conditions] [nvarchar](1500) NOT NULL,
	[ApplyGender] [smallint] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_TrainingPeriods] PRIMARY KEY CLUSTERED 
(
	[TrainingPeriodId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDepartments]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDepartments](
	[Id] [int]  NOT NULL,
	[UserId] [int] NOT NULL,
	[DepartmentId] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_UserDepartments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/19/2024 3:57:29 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int]  NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[UserFullName] [nvarchar](250) NOT NULL,
	[UserRoleId] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[Gender] [bit] NULL,
	[LastOperation] [char](1) NOT NULL,
	[SynchTimestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TraineeRequests] ADD  DEFAULT ((0)) FOR [TotalTrainingPeriod]
GO
ALTER TABLE [dbo].[ApproveRegisterDatas]  WITH CHECK ADD  CONSTRAINT [FK_ApproveRegisterData_Trainee] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[ApproveRegisterDatas] CHECK CONSTRAINT [FK_ApproveRegisterData_Trainee]
GO
ALTER TABLE [dbo].[LookupDepartmentSpecialities]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentSpecialities_LookupDepartments] FOREIGN KEY([DepartmantId])
REFERENCES [dbo].[LookupDepartments] ([DepartmentId])
GO
ALTER TABLE [dbo].[LookupDepartmentSpecialities] CHECK CONSTRAINT [FK_DepartmentSpecialities_LookupDepartments]
GO
ALTER TABLE [dbo].[LookupDepartmentSpecialities]  WITH CHECK ADD  CONSTRAINT [FK_DepartmentSpecialities_LookupSpecialities] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[LookupSpecialities] ([SpecialityId])
GO
ALTER TABLE [dbo].[LookupDepartmentSpecialities] CHECK CONSTRAINT [FK_DepartmentSpecialities_LookupSpecialities]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_LookupQuestionType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[LookupQuestionType] ([TypeId])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_LookupQuestionType]
GO
ALTER TABLE [dbo].[QuestionOptions]  WITH CHECK ADD  CONSTRAINT [FK_QuestionOptions_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
ALTER TABLE [dbo].[QuestionOptions] CHECK CONSTRAINT [FK_QuestionOptions_Question]
GO
ALTER TABLE [dbo].[SurveyAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAnswer_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
ALTER TABLE [dbo].[SurveyAnswer] CHECK CONSTRAINT [FK_SurveyAnswer_Question]
GO
ALTER TABLE [dbo].[SurveyAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAnswer_QuestionOptions] FOREIGN KEY([QuestionOptionID])
REFERENCES [dbo].[QuestionOptions] ([QuestionOptionID])
GO
ALTER TABLE [dbo].[SurveyAnswer] CHECK CONSTRAINT [FK_SurveyAnswer_QuestionOptions]
GO
ALTER TABLE [dbo].[SurveyAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAnswer_Survey] FOREIGN KEY([SurveyID])
REFERENCES [dbo].[Survey] ([SurveyID])
GO
ALTER TABLE [dbo].[SurveyAnswer] CHECK CONSTRAINT [FK_SurveyAnswer_Survey]
GO
ALTER TABLE [dbo].[SurveyAnswer]  WITH CHECK ADD  CONSTRAINT [FK_SurveyAnswer_Trainees] FOREIGN KEY([TraineeID])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[SurveyAnswer] CHECK CONSTRAINT [FK_SurveyAnswer_Trainees]
GO
ALTER TABLE [dbo].[SurveyQuestion]  WITH CHECK ADD  CONSTRAINT [FK_SurveyQuestion_Question] FOREIGN KEY([QuestionID])
REFERENCES [dbo].[Question] ([QuestionID])
GO
ALTER TABLE [dbo].[SurveyQuestion] CHECK CONSTRAINT [FK_SurveyQuestion_Question]
GO
ALTER TABLE [dbo].[SurveyQuestion]  WITH CHECK ADD  CONSTRAINT [FK_SurveyQuestion_Survey] FOREIGN KEY([SurveyID])
REFERENCES [dbo].[Survey] ([SurveyID])
GO
ALTER TABLE [dbo].[SurveyQuestion] CHECK CONSTRAINT [FK_SurveyQuestion_Survey]
GO
ALTER TABLE [dbo].[TraineeCertificate]  WITH CHECK ADD  CONSTRAINT [FK_TraineeCertificate_TraineeRequests] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[TraineeCertificate] CHECK CONSTRAINT [FK_TraineeCertificate_TraineeRequests]
GO
ALTER TABLE [dbo].[TraineeCertificate]  WITH CHECK ADD  CONSTRAINT [FK_TraineeCertificate_TraineeRequests1] FOREIGN KEY([RequestId])
REFERENCES [dbo].[TraineeRequests] ([RequestId])
GO
ALTER TABLE [dbo].[TraineeCertificate] CHECK CONSTRAINT [FK_TraineeCertificate_TraineeRequests1]
GO
ALTER TABLE [dbo].[TraineeInfoPerRequest]  WITH CHECK ADD  CONSTRAINT [FK_TraineeInfo_Request] FOREIGN KEY([RequestId])
REFERENCES [dbo].[TraineeRequests] ([RequestId])
GO
ALTER TABLE [dbo].[TraineeInfoPerRequest] CHECK CONSTRAINT [FK_TraineeInfo_Request]
GO
ALTER TABLE [dbo].[TraineeInfoPerRequest]  WITH CHECK ADD  CONSTRAINT [FK_TraineeInfo_Trainee] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[TraineeInfoPerRequest] CHECK CONSTRAINT [FK_TraineeInfo_Trainee]
GO
ALTER TABLE [dbo].[TraineeQualifications]  WITH CHECK ADD  CONSTRAINT [FK_TraineeQualifications_LookupAverageType] FOREIGN KEY([AverageTypeId])
REFERENCES [dbo].[LookupAverageTypes] ([AverageTypeId])
GO
ALTER TABLE [dbo].[TraineeQualifications] CHECK CONSTRAINT [FK_TraineeQualifications_LookupAverageType]
GO
ALTER TABLE [dbo].[TraineeQualifications]  WITH CHECK ADD  CONSTRAINT [FK_TraineeQualifications_LookupDegrees] FOREIGN KEY([DegreeId])
REFERENCES [dbo].[LookupDegrees] ([DegreeId])
GO
ALTER TABLE [dbo].[TraineeQualifications] CHECK CONSTRAINT [FK_TraineeQualifications_LookupDegrees]
GO
ALTER TABLE [dbo].[TraineeQualifications]  WITH CHECK ADD  CONSTRAINT [FK_TraineeQualifications_LookupSpecialities] FOREIGN KEY([SpecialityId])
REFERENCES [dbo].[LookupSpecialities] ([SpecialityId])
GO
ALTER TABLE [dbo].[TraineeQualifications] CHECK CONSTRAINT [FK_TraineeQualifications_LookupSpecialities]
GO
ALTER TABLE [dbo].[TraineeQualifications]  WITH CHECK ADD  CONSTRAINT [FK_TraineeQualifications_LookupUniversity] FOREIGN KEY([UniversityId])
REFERENCES [dbo].[LookupUniversities] ([UniversityId])
GO
ALTER TABLE [dbo].[TraineeQualifications] CHECK CONSTRAINT [FK_TraineeQualifications_LookupUniversity]
GO
ALTER TABLE [dbo].[TraineeQualifications]  WITH CHECK ADD  CONSTRAINT [FK_TraineeQualifications_Trainee] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[TraineeQualifications] CHECK CONSTRAINT [FK_TraineeQualifications_Trainee]
GO
ALTER TABLE [dbo].[TraineeRequestDesires]  WITH CHECK ADD  CONSTRAINT [FK_TraineeRequestCities_Trainee] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[TraineeRequestDesires] CHECK CONSTRAINT [FK_TraineeRequestCities_Trainee]
GO
ALTER TABLE [dbo].[TraineeRequestDesires]  WITH CHECK ADD  CONSTRAINT [FK_TraineeRequestCities_TraineeRequest] FOREIGN KEY([RequestId])
REFERENCES [dbo].[TraineeRequests] ([RequestId])
GO
ALTER TABLE [dbo].[TraineeRequestDesires] CHECK CONSTRAINT [FK_TraineeRequestCities_TraineeRequest]
GO
ALTER TABLE [dbo].[TraineeRequests]  WITH CHECK ADD FOREIGN KEY([CalculationMethodId])
REFERENCES [dbo].[LookupTrainingCalcMethods] ([Id])
GO
ALTER TABLE [dbo].[TraineeRequests]  WITH CHECK ADD  CONSTRAINT [FK_TraineeRequest_LookupRequestStatus] FOREIGN KEY([RequestStatusId])
REFERENCES [dbo].[LookupRequestStatus] ([RequestStatusId])
GO
ALTER TABLE [dbo].[TraineeRequests] CHECK CONSTRAINT [FK_TraineeRequest_LookupRequestStatus]
GO
ALTER TABLE [dbo].[TraineeRequests]  WITH CHECK ADD  CONSTRAINT [FK_TraineeRequest_Trainee] FOREIGN KEY([TraineeId])
REFERENCES [dbo].[Trainees] ([TraineeId])
GO
ALTER TABLE [dbo].[TraineeRequests] CHECK CONSTRAINT [FK_TraineeRequest_Trainee]
GO
ALTER TABLE [dbo].[TraineeRequests]  WITH CHECK ADD  CONSTRAINT [FK_TraineeRequest_TrainingPeriod] FOREIGN KEY([TrainingPeriodId])
REFERENCES [dbo].[TrainingPeriods] ([TrainingPeriodId])
GO
ALTER TABLE [dbo].[TraineeRequests] CHECK CONSTRAINT [FK_TraineeRequest_TrainingPeriod]
GO
ALTER TABLE [dbo].[Trainees]  WITH CHECK ADD  CONSTRAINT [FK_Trainee_LookupAddressCity] FOREIGN KEY([AddressCityId])
REFERENCES [dbo].[LookupAddressCities] ([AddressCityId])
GO
ALTER TABLE [dbo].[Trainees] CHECK CONSTRAINT [FK_Trainee_LookupAddressCity]
GO
ALTER TABLE [dbo].[TrainingPeriods]  WITH CHECK ADD  CONSTRAINT [FK_TrainingPeriod_LookupTrainingSemester] FOREIGN KEY([SemesterId])
REFERENCES [dbo].[LookupTrainingSemesters] ([SemesterId])
GO
ALTER TABLE [dbo].[TrainingPeriods] CHECK CONSTRAINT [FK_TrainingPeriod_LookupTrainingSemester]
GO
ALTER TABLE [dbo].[TrainingPeriods]  WITH CHECK ADD  CONSTRAINT [FK_TrainingPeriod_LookupTrainingYear] FOREIGN KEY([YearId])
REFERENCES [dbo].[LookupTrainingYears] ([YearId])
GO
ALTER TABLE [dbo].[TrainingPeriods] CHECK CONSTRAINT [FK_TrainingPeriod_LookupTrainingYear]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[LookupUserRoles] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[LookupUserRoles] ([Id])
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_LookupUserRoles] FOREIGN KEY([UserRoleId])
REFERENCES [dbo].[LookupUserRoles] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_LookupUserRoles]
GO
