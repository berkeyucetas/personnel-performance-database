SELECT 
    e.FirstName,
    e.LastName,
    lt.LeaveTypeName,
    l.StartDate,
    l.EndDate
FROM Leaves l
JOIN Employees e ON l.EmployeeID = e.EmployeeID
JOIN LeaveTypes lt ON l.LeaveTypeID = lt.LeaveTypeID;