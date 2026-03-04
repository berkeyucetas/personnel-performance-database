SELECT 
    e.FirstName,
    e.LastName,
    es.BaseSalary,
    es.AdjustedSalary
FROM EmployeeSalaries es
JOIN Employees e ON es.EmployeeID = e.EmployeeID;