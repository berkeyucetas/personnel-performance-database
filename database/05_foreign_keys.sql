alter table Departments 
add constraint FK_Departments_Parent
foreign key (ParentDepartmentID)
references Departments(DepartmentID);
alter table Positions
add constraint FK_Positions_Grade
foreign key (GradeID)
references SalaryGrades(GradeID);
alter table Employees
add constraint FK_Employees_Department
foreign key (DepartmentID)
references Departments(DepartmentID)
on delete set null;
alter table Employees
add constraint FK_Employees_Position
foreign key (PositionID)
references Positions(PositionID)
on delete set null;
alter table Employees
add constraint FK_Employees_Branch
foreign key (BranchID)
references Branches(BranchID)
on delete set null;
alter table Employees
add constraint FK_Employees_Manager
foreign key (ManagerID)
references Employees(EmployeeID);
alter table OrganizationHierarchy
add constraint FK_OrgHierarchy_Manager
foreign key (ManagerID)
references Employees(EmployeeID);
alter table OrganizationHierarchy
add constraint FK_OrgHierarchy_Subordinate
foreign key (SubordinateID)
references Employees(EmployeeID);
alter table Users
add constraint FK_Users_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table Users
add constraint FK_Users_Role
foreign key (RoleID)
references Roles(RoleID);
alter table AuditLogs
add constraint FK_AuditLogs_User
foreign key (UserID)
references Users(UserID);
alter table PerformanceCriteria
add constraint FK_Criteria_Category
foreign key (CriteriaID)
references PerformanceCriteriaCategories(CriteriaCategoryID);
alter table PerformanceReviews
add constraint FK_Reviews_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table PerformanceReviews
add constraint FK_Reviews_Reviewer
foreign key (ReviewerID)
references Employees(EmployeeID);
alter table PerformanceReviews
add constraint FK_Reviews_Period
foreign key (PeriodID)
references PerformancePeriods(PeriodID);
alter table PerformanceScores
add constraint FK_Scores_Review
foreign key (ReviewID)
references PerformanceReviews(ReviewID);
alter table PerformanceScores
add constraint FK_Scores_Criteria
foreign key (CriteriaID)
references PerformanceCriteria(CriteriaID);
alter table Goals
add constraint FK_Goals_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table GoalsKPIs
add constraint FK_GoalsKPIs_Goal
foreign key (GoalID)
references Goals(GoalID);
alter table GoalsKPIs
add constraint FK_GoalsKPIs_KPI
foreign key (KPIID)
references KPIs(KPIID);
alter table AttendanceRecords
add constraint FK_Attendance_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table Leaves
add constraint FK_Leaves_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table Leaves
add constraint FK_Leaves_Type
foreign key (LeaveTypeID)
references LeaveTypes(LeaveTypeID);
alter table Leaves
add constraint FK_Leaves_ApprovedBy
foreign key (ApprovedBy)
references Employees(EmployeeID);
alter table EmployeeTrainings
add constraint FK_EmployeeTrainings_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table EmployeeTrainings
add constraint FK_EmployeeTrainings_Training
foreign key (TrainingID)
references Trainings(TrainingID);
alter table EmployeeSalaries
add constraint FK_Salaries_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table BonusPayment
add constraint FK_Bonus_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table BonusPayment
add constraint FK_Bonus_Review
foreign key (RelatedReviewID)
references PerformanceReviews(ReviewID);
alter table PromotionHistory
add constraint FK_Promotion_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table PromotionHistory
add constraint FK_Promotion_OldPosition
foreign key (OldPositionID)
references Positions(PositionID);
alter table PromotionHistory
add constraint FK_Promotion_NewPosition
foreign key (NewPositionID)
references Positions(PositionID);
alter table PromotionHistory
add constraint FK_Promotion_ApprovedBy
foreign key (ApprovedBy)
references Employees(EmployeeID);
alter table DisciplinaryActions
add constraint FK_Disciplinary_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);
alter table Notifications
add constraint FK_Notifications_Employee
foreign key (EmployeeID)
references Employees(EmployeeID);