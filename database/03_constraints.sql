alter table Employees
add constraint CK_Employees_Status
check (status IN ('Active','Passive','Terminated','OnLeave'));
alter table PerformanceReviews
add constraint CK_PerformanceReviews_Status
check (status IN ('Draft','Submitted','Approved','Rejected','Completed'));
alter table Leaves
add constraint CK_Leaves_Status
check (LeaveStatus IN ('Pending','Approved','Rejected','Cancelled'));
alter table Goals
ADD CONSTRAINT CK_Goals_Status
check (Status IN ('NotStarted','InProgress','Completed','Cancelled'));
alter table Positions
add constraint CK_Positions_SalaryRange
check (MinSalary <= MaxSalary);
alter table SalaryGrades
add constraint CK_SalaryGrades_Range
check (MinSalary <= MaxSalary);
alter table Employees
add constraint CK_Employees_Dates
check (TerminationDate IS NULL OR TerminationDate >= HireDate);
alter table Leaves
add constraint CK_Leaves_DateRange
check (EndDate >= StartDate);
alter table Goals
add constraint CK_Goals_DateRange
check (EndDate >= StartDate);

ALTER TABLE Employees
ADD CONSTRAINT UQ_Employees_WorkEmail
UNIQUE (WorkEmail);
ALTER TABLE Users
ADD CONSTRAINT UQ_Users_Username
UNIQUE (Username);
ALTER TABLE Roles
ADD CONSTRAINT UQ_Roles_RoleCode
UNIQUE (RoleCode);
ALTER TABLE PerformancePeriods
ADD CONSTRAINT UQ_PerformancePeriods_Year_PeriodType
UNIQUE (Year, PeriodType);
ALTER TABLE Branches
ADD CONSTRAINT UQ_Branches_Name_City
UNIQUE (BranchName, City);
ALTER TABLE SalaryGrades
ADD CONSTRAINT UQ_SalaryGrades_GradeCode
UNIQUE (GradeCode);
ALTER TABLE Positions
ADD CONSTRAINT UQ_Positions_PositionCode
UNIQUE (PositionCode);
ALTER TABLE KPIs
ADD CONSTRAINT UQ_KPIs_KPICode
UNIQUE (KPICode);
ALTER TABLE PerformanceCriteriaCategories
ADD CONSTRAINT UQ_PerformanceCriteriaCategories_Code
UNIQUE (CategoryCode);
ALTER TABLE GoalsKPIs
ADD CONSTRAINT UQ_GoalsKPIs_Goal_KPI
UNIQUE (GoalID, KPIID);