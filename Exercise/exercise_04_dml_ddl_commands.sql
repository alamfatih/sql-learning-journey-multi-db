-- Exercise 4: Update the marks of Popeye to 45
UPDATE Science_class
SET Science_Marks = 45
WHERE Name = 'Popeye'; -- As per the solution, 'name' is still the column name here [cite: 14]

-- Exercise 4: Delete the row containing details of student named 'Robb'
DELETE FROM Science_class
WHERE Name = 'Robb';

-- Exercise 4: Rename column 'Name' to 'student_name'.
ALTER TABLE Science_class
RENAME COLUMN Name TO student_name;