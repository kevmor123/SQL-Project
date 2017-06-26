CREATE VIEW employee_dependent(dep_name, dep_sex, dep_relationship, dep_birthdate) AS SELECT Dependent_name, Sex, Relationship, Birth_date
FROM Employee_Contacts, Employee WHERE Employee_Contacts.Ppsn = Employee.Ppsn;

UPDATE Employee SET FName ='Kevin' WHERE Ppsn= 9253724L;
UPDATE  Employee SET FName ='Garry' WHERE Ppsn= 9253724L;

