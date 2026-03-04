SELECT 
    m.FirstName + ' ' + m.LastName AS Manager,
    e.FirstName + ' ' + e.LastName AS Employee
FROM Employees e
JOIN Employees m ON e.ManagerID = m.EmployeeID;