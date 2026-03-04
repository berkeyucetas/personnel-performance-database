INSERT INTO Departments (DepartmentName, DepartmentCode, Budget)
VALUES
('Executive','EXEC',5000000),
('Software Development','DEV',8000000),
('Quality Assurance','QA',3000000),
('DevOps','DEVOPS',3500000),
('Product Management','PROD',4000000),
('UI/UX Design','UIUX',2500000),
('Human Resources','HR',2000000),
('Finance','FIN',2500000),
('Sales','SALES',6000000),
('Marketing','MKT',4000000),
('Customer Support','CS',3000000),
('Data & AI','DATA',5000000),
('Cyber Security','SEC',4500000),
('IT Operations','ITOPS',3500000),
('Legal & Compliance','LEGAL',2000000);
INSERT INTO Roles (RoleName, RoleCode, RoleLevel)
VALUES
('SuperAdmin','SUPERADMIN',1),
('Admin','ADMIN',2),
('CountryDirector','COUNTRYDIR',3),
('BranchManager','BRANCHMAN',4),
('DepartmentManager','DEPTMAN',5),
('TeamLead','TEAMLEAD',6),
('Employee','EMPLOYEE',7),
('Auditor','AUDITOR',8);
INSERT INTO Branches (BranchName, City, CountryCode, CountryName, CurrencyCode)
VALUES
('Istanbul Tech Hub','Istanbul','TR','Turkey','TRY'),
('Ankara Development Center','Ankara','TR','Turkey','TRY'),
('Izmir Software Office','Izmir','TR','Turkey','TRY'),
('Bursa Engineering Office','Bursa','TR','Turkey','TRY'),
('Berlin Tech Office','Berlin','DE','Germany','EUR'),
('Munich Development Hub','Munich','DE','Germany','EUR'),
('Hamburg Cloud Center','Hamburg','DE','Germany','EUR'),
('Paris Innovation Lab','Paris','FR','France','EUR'),
('Lyon Development Office','Lyon','FR','France','EUR'),
('New York Headquarters','New York','US','United States','USD'),
('Austin Engineering Hub','Austin','US','United States','USD'),
('Seattle Cloud Center','Seattle','US','United States','USD'),
('Milan Design Office','Milan','IT','Italy','EUR'),
('Bangalore Development Center','Bangalore','IN','India','INR'),
('Tokyo Tech Office','Tokyo','JP','Japan','JPY'),
('Osaka Engineering Center','Osaka','JP','Japan','JPY');
INSERT INTO SalaryGrades (GradeCode, MinSalary, MaxSalary, BonusPercentage)
VALUES
('G1',30000,45000,5),
('G2',45000,60000,7),
('G3',60000,80000,10),
('G4',80000,100000,12),
('G5',100000,130000,15),
('G6',130000,170000,18),
('G7',170000,220000,20),
('G8',220000,300000,25);
INSERT INTO Positions
(PositionName, PositionCode, MinSalary, MaxSalary, GradeID, IsManagerial)
VALUES
('Junior Software Developer','JRDEV',35000,55000,2,0),
('Software Developer','DEV',50000,75000,3,0),
('Senior Software Developer','SRDEV',70000,100000,4,0),
('Lead Software Engineer','LEADDEV',90000,120000,5,1),
('QA Engineer','QAENG',40000,65000,3,0),
('Senior QA Engineer','SRQA',60000,85000,4,0),
('DevOps Engineer','DEVOPS',60000,90000,4,0),
('Senior DevOps Engineer','SRDEVOPS',80000,110000,5,0),
('Product Manager','PM',85000,120000,5,1),
('Senior Product Manager','SRPM',100000,140000,6,1),
('UX/UI Designer','UXUI',50000,75000,3,0),
('HR Specialist','HRS',45000,70000,3,0),
('Finance Specialist','FIN',50000,75000,3,0),
('Sales Manager','SALESM',90000,130000,5,1),
('Marketing Manager','MKTGM',85000,120000,5,1),
('Cyber Security Specialist','SEC',70000,110000,4,0),
('Data Engineer','DATAENG',75000,110000,4,0),
('AI Engineer','AIENG',85000,120000,5,0),
('IT Operations Engineer','ITOPS',60000,90000,4,0),
('Legal Advisor','LEGAL',70000,100000,4,0);
NSERT INTO KPIs (KPICode, KPIName, MeasurementUnit, TargetValue)
VALUES
('KPI001','Project Delivery Rate','Percent',90),
('KPI002','Bug Resolution Time','Hours',24),
('KPI003','Code Quality Score','Score',85),
('KPI004','Sprint Completion Rate','Percent',95),
('KPI005','Customer Satisfaction','Score',90),
('KPI006','Sales Conversion Rate','Percent',20),
('KPI007','Lead Generation','Count',100),
('KPI008','Infrastructure Uptime','Percent',99),
('KPI009','Security Incident Rate','Count',0),
('KPI010','Data Processing Accuracy','Percent',98);
INSERT INTO PerformanceCriteria (CriteriaName, CriteriaCategoryID)
VALUES
('Technical Knowledge',1),
('Code Quality',1),
('Problem Solving',1),
('System Design Skills',1),
('Debugging Ability',1),
('Communication Skills',2),
('Teamwork',2),
('Knowledge Sharing',2),
('Cross-Team Collaboration',2),
('Time Management',3),
('Responsibility',3),
('Meeting Deadlines',3),
('Initiative Taking',4),
('Leadership Potential',4),
('Decision Making',4);



