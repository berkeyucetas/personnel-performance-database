SELECT 
    e.FirstName,
    e.LastName,
    t.TrainingName,
    et.CompletionStatus
FROM EmployeeTrainings et
JOIN Employees e ON et.EmployeeID = e.EmployeeID
JOIN Trainings t ON et.TrainingID = t.TrainingID;