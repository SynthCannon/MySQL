USE cinema_workers_db;

DELETE FROM employees;
DELETE FROM emergency_contacts;

INSERT INTO employees(Employee_ID, F_Name, L_Name, DOB, Gender, Home_Address)
	VALUES (1,'Matt','Hunt',19220101,'M','10 Downing Street, London');
INSERT INTO employees(Employee_ID, F_Name, L_Name, DOB, Gender, Home_Address)
	VALUES (2,'Gareth','Davis',19230101,'M','Buckingham Palace, London');

INSERT INTO emergency_contacts (Employee_ID, F_Name, L_Name, Relationship, Contact_Num, Contact_Email)
	VALUES (1,'Papa','Hunt','Papa','43435353545','papa@papa.com');
INSERT INTO emergency_contacts (Employee_ID, F_Name, L_Name, Relationship, Contact_Num, Contact_Email)
	VALUES (2,'Missy','Christmas','Cat','43435353555','xmas@meow.com');
    
INSERT INTO drones (Employee_ID, Positon, Hourly_Pay)
	VALUES (1,'The Brawn', 2222e-2);
INSERT INTO management (Employee_ID, Positon, Salary)
	VALUES (2,'The Brains', 2222222e-2);
    
SELECT * FROM management;