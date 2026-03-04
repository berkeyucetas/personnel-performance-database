SELECT 
    e.FirstName,
    e.LastName,
    pr.OverallScore,
    pr.Status
FROM PerformanceReviews pr
JOIN Employees e ON pr.EmployeeID = e.EmployeeID;