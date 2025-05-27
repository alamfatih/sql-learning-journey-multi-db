-- Exercise 3: Retrieve all data from the table 'Science_Class'
SELECT * FROM Science_class;

-- Exercise 3: Retrieve the name of students who have scored more than 60 marks
SELECT Name FROM Science_class WHERE Science_Marks > 60;

-- Exercise 3: Retrieve all data of students who have scored more than 35 but less than 60 marks
SELECT * FROM Science_class WHERE Science_Marks BETWEEN 35 AND 60;

-- Exercise 3: Retrieve all other students i.e. who have scored less than or equal to 35 or more than or equal to 60.
SELECT * FROM Science_class WHERE Science_Marks NOT BETWEEN 35 AND 60;