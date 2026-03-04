SELECT 
    e.EmployeeID,
    e.FirstName,
    e.LastName,
    d.DepartmentName,
    p.PositionName,
    b.BranchName
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
JOIN Positions p ON e.PositionID = p.PositionID
JOIN Branches b ON e.BranchID = b.BranchID;