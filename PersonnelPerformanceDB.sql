--create database PersonnelPerformanceDB
--use PersonnelPerformanceDB
/*create table Departments(
DepartmentID int identity(1,1) primary key,
DepartmentName nvarchar(100) not null,
DepartmentCode nvarchar(20) unique,
ParentDepartmentID int null,
Budget decimal(18,2),
CreatedDate datetime default getdate()
);*/
/*create table SalaryGrades(
GradeID int identity (1,1) primary key,
GradeCode nvarchar(10) not null,
MinSalary decimal (18,2),
MaxSalary decimal (18,2),
BonusPercentage decimal (5,2)
);*/
/*create table Positions( 
PositionID int identity(1,1) primary key,
PositionName nvarchar(100) not null,
PositionCode nvarchar(20),
MinSalary decimal (18,2),
MaxSalary decimal (18,2),
GradeID int,
IsManagerial bit default 0,
);*/
/*create table Branches(
BranchID int identity(1,1) primary key,
BranchName nvarchar(100) not null,
City nvarchar(100) not null,
CountryCode char(3),
CountryName nvarchar(100) not null,
CurrencyCode char(3),
SalaryMultiplier decimal(5,2),
EstablishedDate date,
BranchType nvarchar(50)
)*/
/*create table Roles(
RoleID int identity(1,1) primary key,
RoleName nvarchar(50),
RoleCode nvarchar(20) unique,
RoleLevel int
);*/
/*create table PerformancePeriods(
PeriodID int identity(1,1) primary key,
Year int,
PeriodType nvarchar(20),
StartDate date,
EndDate date,
IsClosed bit default 0
);*/
/*create table PerformanceCriteria(
CriteriaID int identity(1,1) primary key,
CriteriaName nvarchar(100),
Weight decimal(5,2),
IsActive bit default 1
);*/
/*create table PerformanceCriteriaCategories(
CriteriaCategoryID int identity(1,1) primary key,
CategoryCode nvarchar(50) not null unique,
CategoryName nvarchar(150) not null,
DefaultWeight decimal(5,2) null,
IsActive bit default 1,
CreateAt datetime2 default sysdatetime()
);*/
/*create table LeaveTypes(
LeaveTypeID int identity(1,1) primary key,
LeaveTypeName nvarchar(100),
MaxDaysPerYear int,
IsPaid bit
);*/
/*create table Trainings(
TrainingID int identity(1,1) primary key,
TrainingCode nvarchar(20),
TrainingName nvarchar(100),
DurationHours int,
Cost decimal(18,2),
IsMandatory bit
);*/
/*create table Employees(
EmployeeID int identity(10000,1) primary key,
FirstName nvarchar(30),
LastName nvarchar(60),
Gender char(1) check(Gender in('M','F')),
BirthDate date,
NationalID nvarchar(30),
WorkEmail nvarchar(100),
PersonnelEmail nvarchar(100),
Phone nvarchar(20),
HireDate date,
TerminationDate date null,
EmploymentType nvarchar(20),
MaritalStatus nvarchar(20),
CountryCode char(2),
HierarchyLevel int,
Status nvarchar(20) default 'Active',
DepartmentID int,
PositionID int,
BranchID int,
ManagerID int null,
CreatedDate datetime default getdate()
);*/
/*create table OrganizationHierarchy(
HierarchyID int identity(1,1) primary key,
ManagerID int,
SubordinateID int,
Level int,
EffectiveDate date
);*/
/*create table Users(
UserID	int identity(1,1) primary key,
EmployeeID int unique,
RoleID int,
Username nvarchar(50) unique,
PasswordHash nvarchar(255),
IsActive bit default 1,
LastLoginDate datetime
);*/
/*create table AuditLogs(
AuditID int identity(1,1) primary key,
UserID int,
ActionType nvarchar(50),
TableName nvarchar(100),
RecordID int,
OldValue nvarchar(max),
NewValue nvarchar(max),
ActionDate datetime default getdate(),
IpAddress nvarchar(50)
);*/
/*create table PerformanceReviews(
ReviewID int identity(1,1) primary key,
EmployeeID int, 
ReviewerID int,
PeriodID int,
ReviewDate date,
OverallScore decimal(4,2),
FinalComment nvarchar(max),
Status nvarchar(20)
);*/
/*create table PerformanceScores(
ScoreID int identity(1,1) primary key,
ReviewID int,
CriteriaID int,
Score decimal(4,2),
WeightedScore decimal(6,2),
Comment nvarchar(max)
);*/
/*create table Goals(
GoalID int identity(1,1) primary key,
EmployeeID int,
StartDate date,
EndDate date,
TargetValue decimal(18,2),
CurrentValue decimal(18,2),
Status nvarchar(20),
PriorityLevel int
);*/
/*create table KPIs(
KPIID int identity(1,1) primary key,
KPICode nvarchar(50),
KPIName nvarchar(100),
MeasurementUnit nvarchar(50),
TargetValue decimal(18,2)
);*/
/*create table GoalsKPIs(
GoalKPIID	int identity(1,1) primary key,
GoalID int,
KPIID int,
Weight decimal(5,2)
);*/
/*create table AttendanceRecords(
AttendanceID int identity(1,1) primary key,
EmployeeID int,
CheckInTime datetime,
CheckOutTime datetime,
WorkHours decimal(5,2),
AttendanceStatus nvarchar(20)
);*/
/*create table Leaves(
LeaveID int identity(1,1) primary key,
EmployeeID int,
LeaveTypeID int,
StartDate date,
EndDate date,
ApprovedBy int,
ApprovalDate datetime,
LeaveStatus nvarchar(20),
Reason nvarchar(500)
);*/
/*create table EmployeeTrainings(
EmployeeTrainingID int identity(1,1) primary key,
EmployeeID int,
TrainingID int,
CompletionStatus nvarchar(20),
Score decimal(5,2),
CertificateIssued bit
);*/
/*create table EmployeeSalaries(
SalaryID int identity(1,1) primary key,
EmployeeID int,
BaseSalary decimal(18,2),
AdjustedSalary decimal(18,2),
EffectiveFrom date,
EffectiveTo date,
ChangeReason nvarchar(100)
);*/
/*create table BonusPayment(
BonusID int identity(1,1) primary key,
EmployeeID int,
BonusAmount decimal(18,2),
BonusDate date,
BonusReason nvarchar(200),
RelatedReviewID int
);*/
/*create table PromotionHistory(
PromotionID int identity(1,1) primary key,
EmployeeID int,
OldPositionID int,
NewPositionID int,
PromotionDate date,
SalaryIncrease decimal(18,2),
ApprovedBy int
);*/
/*create table DisciplinaryActions(
ActionID int identity(1,1) primary key,
EmployeeID int,
ActionType nvarchar(100),
ActionDate date,
PenaltyDescription nvarchar(500),
SeverityLevel int
);*/
/*create table Notifications(
NotificationID int identity(1,1) primary key,
EmployeeID int,
NotificationType nvarchar(50),
Message nvarchar(max), 
IsRead bit default 0,
CreatedDate datetime default getdate(),
RelatedEntityID int
);*/