-- ====MySQL-Practice====


-- 1)-DATABASE===

-- A)==creation:
CREATE DATABASE SchoolDB;

-- B)==usage:
USE SchoolDB;

-- C)==WE ALSO DO SOMETHING LIKE :
CREATE DATABASE IF NOT EXISTS SchoolDB;


-- 2)-TABLE===
-- A)-creation:
CREATE TABLE Students(
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);


-- 3)-INSERT INTO TABLE===
-- A)- inserting values:
INSERT INTO Students (ID, Name, Age)
VALUES  (1, 'Jane Doe', 20),
        (2, 'John Smith', 22),
        (3, 'Alex Jones', 19);


-- 4)-SELECT FROM TABLE===
-- A)- selecting only name of older than 19 students:
SELECT Name FROM Students WHERE Age > 19 AND ID < 3;


-- 5)-UPDATE FROM TABLE===

-- A)-update some students infos:
UPDATE Students SET Age = 23 WHERE ID = 2;

-- B)-delete a student:
DELETE FROM Students WHERE ID = 3;


-- 6)-TCL(autocommit, commit, rollback)===

-- A)-turn OFF autocommit: 
SET autocommit = OFF;

-- B)-delete a student 
DELETE FROM Students WHERE ID = 2;

-- C)-undo the delete
ROLLBACK;

-- Remember to turn autocommit back on when done practicing TCL!
SET autocommit = ON;


-- 7)-CURRENT_TIME&DATE===

-- A)-add col with date type:
ALTER TABLE Students 
ADD COLUMN DateJoined DATE DEFAULT (CURRENT_DATE); 
-- 1-WE CAN USE TIME DEFAULT CURRENT_TIME 
-- OR 2-DATETIME DEFAULT CURRENT_TIMESTAMP


-- 8)-UNIQUE_CONSTRAINT===

-- A)-make a new col with unique constraint:
ALTER TABLE Students
ADD COLUMN Phone VARCHAR(10) UNIQUE;


-- 9)-NOT_NULL_CONSTRAINT===

-- A)-make a new col with NOT NULL constraint:
-- Note: Making this an INT handles the check comparisons smoothly!
ALTER TABLE Students
ADD COLUMN Grade INT NOT NULL DEFAULT 10;
-- we need to fill col for all rows so we avoid Error


-- 10)-CHECK_CONSTRAINT===

-- A)-add a check for the Grade col:
ALTER TABLE Students
ADD CONSTRAINT chk_grade CHECK(Grade > 0 AND Grade < 20);


-- 11)-DEFAULT_CONSTRAINT===

-- A)-add a default constraint to a new col Campus
ALTER TABLE Students
ADD COLUMN Campus VARCHAR(15) DEFAULT 'Main Campus';


-- 12)-PRIMARY_KEY_CONSTRAINT===

-- A)-add a UNIQUE NOT NULL constraint to a new col Daily_logs (instead of a 2nd Primary Key)
ALTER TABLE Students
ADD COLUMN Daily_logs INT NOT NULL UNIQUE,
ADD CONSTRAINT chk_logs CHECK(Daily_logs > 0 AND Daily_logs <= 24);
-- !important: 
-- A-a table can contain only one PRIMARY_KEY 
-- B-instead we can use UNIQUE NOT NULL CONSTRAINTS 
-- ===
-- 1-PRIMARY_KEY_CONSTRAINT uses a clustered index 
-- and 2-UNIQUE_NOT_NULL_CONSTRAINT uses a non-clustered index
-- ===


-- 13)-AUTO_INCREMENT_CONSTRAINT===

-- A)-Set up a clean table constraint example for auto_increment
-- !IMPORTANT we can use AUTO_INCREMENT_CONSTRAINT on one col
-- at Table and only if it got a PRIMARY_KEY or a UNIQUE_KEY
-- =So we can have only one AUTO_INCREMENT_CONSTRAINT per TABLE


-- 14)-FOREIGN_KEYS===

-- A)-add Classes Table:
CREATE TABLE Classes(
        Class_ID INT PRIMARY KEY
);

-- B)-add new col to Students Table:
ALTER TABLE Students
ADD COLUMN S_Class_ID INT;

-- C)-link Students Table with Classes Table from its PRIMARY_KEY:
ALTER TABLE Students
ADD CONSTRAINT fk_students_classes
FOREIGN KEY(S_Class_ID) REFERENCES Classes(Class_ID);
-- == We name our constraint (e.g., fk_students_classes) to avoid naming conflicts and errors.
-- == We use FOREIGN KEYS to LINK tables together using a reference pointer, ensuring data safety.
-- == so we can use both tables data through each other


-- 15)-JOINS

-- A)-practice the FOREIGN_KEY between Classes Table and Students
-- --I]-add some values to Classes Table:
INSERT INTO Classes (Class_ID) VALUES (101);
INSERT INTO Classes (Class_ID) VALUES (102);

-- --II]-updating our existing students to assign them to those classes
UPDATE Students SET S_Class_ID = 101 WHERE Name = 'Jane Doe';
UPDATE Students SET S_Class_ID = 101 WHERE Name = 'John Smith';

-- --III]-displaying Name and S_Class_ID from Students Table next to Class_id from Classes Table:
SELECT Students.Name, Classes.Class_ID 
FROM Students
INNER JOIN Classes ON Students.S_Class_ID = Classes.Class_ID;
-- ! we can use JOIN without FOREIGN_KEY but we can't use a 
-- FOREIGN_KEY without JOIN


-- 16)-FUNCTIONS===

-- A]-count students using a function:
SELECT COUNT(Name) AS Total_students FROM Students;
-- B]-age average in school:
SELECT AVG(Age) AS Avrage_ages FROM Students;
-- C]-uppercase names:
SELECT UPPER(Name) FROM Students;
-- D]-oldest student:
SELECT MAX(Age) AS Oldest_stdnt FROM Students;
-- -----------------------------------------------------------------
-- !Important:
-- (1)==Aggregate Functions: They take multiple rows of data and squash them down into a single summary value (like COUNT(), SUM(), AVG(), MIN(), MAX()).

-- (2)== Scalar / Scalar-like Functions: They operate on each individual row's value independently (like string modifiers UPPER(), LOWER(), or date functions like YEAR()).
-- -----------------------------------------------------------------


-- 17)-WildCards===

-- A]-students names start with a J:
SELECT * FROM Students WHERE Name LIKE 'J%';
SELECT * FROM Students WHERE Name LIKE '%es';
SELECT * FROM Students WHERE Name LIKE '____'; -- Looks for exactly 4 characters

-- (%) (Percent Sign): Represents zero, one, or multiple characters.
-- (_) (Underscore): Represents a single, solitary character.


-- 18)-ORDER BY===

-- A]-order names by join date (Newest to Oldest):
SELECT Name FROM Students ORDER BY DateJoined DESC;
-- !Note: Works perfectly even though DateJoined is not in the SELECT clause (Global Position Rule).

-- B]-sort students by campus, grade descending, and ID ascending:
SELECT * FROM Students ORDER BY Campus, Grade DESC, ID;
-- !Note: Omiting 'ASC' on Campus and ID is completely valid as MySQL defaults to ASC.


-- 19)-LIMIT===

-- A]-sort by oldest age and limited in 1:
SELECT * FROM Students ORDER BY Age DESC LIMIT 1;
-- B]-sort names in ascending order and limited in 2:
SELECT Name FROM Students ORDER BY Name ASC LIMIT 2;


-- 20)-UNIONS===

-- A]-mix Students and Classes using UNIONS:
SELECT ID FROM Students
UNION
SELECT Class_ID FROM Classes;
-- We can use UNION ALL to union all without checking duplicates


-- 21)-SELF_JOINS===

-- A]- Add a Mentor_ID column that references student IDs
ALTER TABLE Students ADD COLUMN Mentor_ID INT;

-- B]- Assign Mentors: Jane Doe (ID 1) will mentor John Smith (ID 2)
UPDATE Students SET Mentor_ID = 1 WHERE ID = 2;

-- C]- SELF JOIN task:
SELECT A.Name AS Student_Name, B.Name AS Mentor_Name
FROM Students AS A
INNER JOIN Students AS B
ON A.Mentor_ID = B.ID;


-- 22)-VIEWS===

-- A]- Create view that displays student, their mentor, and grade with security check
CREATE VIEW v_ActiveMentorships AS 
SELECT 
    A.Name AS Student_Name, 
    B.Name AS Mentor_Name, 
    A.Grade AS Grade
FROM Students AS A
INNER JOIN Students AS B
    ON A.Mentor_ID = B.ID
WHERE A.Mentor_ID IS NOT NULL
WITH CHECK OPTION;

-- B]- Querying the view to see it in action:
SELECT * FROM v_ActiveMentorships;
-- OK A VIEW DO TAKE DATA FROM TABLES DO A OPERATION ON IT


-- 23)-INDEXES===

-- A]- Create a regular index on the Name column:
CREATE INDEX idx_student_name ON Students(Name);
-- 💡 Why? Now, searching WHERE Name = 'Jane Doe' takes milliseconds instead of scanning the whole table.
-- B]- Test if MySQL is actually using it (Check the 'key' and 'rows' output columns!)
EXPLAIN SELECT * FROM Students WHERE Name = 'Jane Doe';
-- C]- Create a Composite Index (Multiple columns together):
CREATE INDEX idx_campus_grade ON Students(Campus, Grade);
-- 💡 Note: This is amazing if you frequently run queries filtering by BOTH campus and grade at the same time.
-- D]- How to look at all indexes on your table:
SHOW INDEX FROM Students;
-- E]- How to drop an index if it's slowing down your INSERTS:
ALTER TABLE Students DROP INDEX idx_student_name;


-- 24)-SUBQUERIES===

-- A]-Subquery in a WHERE clause (Find students older than average):
SELECT Name, Age FROM Students 
WHERE Age > (SELECT AVG(Age) FROM Students);
-- B]-Subquery in a SELECT clause (Show student name along with total student count):
SELECT Name, (SELECT COUNT(*) FROM Students) AS Total_School_Count 
FROM Students;


-- 25)-GROUP_BY===

-- A]- Count how many students are in each grade:
SELECT Grade, COUNT(ID) AS Total_Students
FROM Students
GROUP BY Grade;
-- B]- Find the average age per campus, but only for campuses with an average age over 20:
SELECT Campus, AVG(Age) AS Average_Age
FROM Students
GROUP BY Campus
HAVING AVG(Age) > 20;


-- 26)-ROLLUP Clause===

-- A]- Group by grade and get a grand total row at the bottom:
SELECT Grade, COUNT(ID) AS Total_Students
FROM Students
GROUP BY Grade WITH ROLLUP;
-- so it just adds a row with the final result


-- 27)-ON DELETE===

-- A]- ON DELETE SET NULL (If a class is deleted, the student's S_Class_ID becomes NULL):
ALTER TABLE Students DROP FOREIGN KEY fk_students_classes;

ALTER TABLE Students
ADD CONSTRAINT fk_students_classes
FOREIGN KEY(S_Class_ID) REFERENCES Classes(Class_ID)
ON DELETE SET NULL; -- it puts a null value for the deleted FK
-- B]- ON DELETE CASCADE (If a class is deleted, the students in it are DELETED too!):
ALTER TABLE Students DROP FOREIGN KEY fk_students_classes;

ALTER TABLE Students
ADD CONSTRAINT fk_students_classes
FOREIGN KEY(S_Class_ID) REFERENCES Classes(Class_ID)
ON DELETE CASCADE;-- it deletes the entire row for any data linked to the deleted FK
-- we use on delete for deleted data


-- 28)-STORED PROCEDURES

DELIMITER //

-- A]- IN parameter (Input only):
CREATE PROCEDURE GetStudent(IN studentId INT)
BEGIN
    SELECT * FROM Students WHERE ID = studentId;
END //

-- B]- OUT parameter (Output only):
CREATE PROCEDURE GetTotalStudents(OUT total INT)
BEGIN
    SELECT COUNT(*) INTO total FROM Students;
END //

DELIMITER ;

-- C]- How to call a procedure with an OUT parameter:
CALL GetTotalStudents(@school_total);
SELECT @school_total; -- This prints the value stored in the variable


-- 29)-Triggers===

-- A]- Create a log table to track changes automatically:
CREATE TABLE Student_Logs (
    Log_ID INT AUTO_INCREMENT PRIMARY KEY,
    Action VARCHAR(50),
    Student_Name VARCHAR(50),
    Changed_At TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- B]- Create an AFTER INSERT Trigger:
DELIMITER //

CREATE TRIGGER Log_New_Student
AFTER INSERT ON Students
FOR EACH ROW
BEGIN
    INSERT INTO Student_Logs (Action, Student_Name)
    VALUES ('INSERT', NEW.Name); 
END //

DELIMITER ;
-- we use a trigger to do an operation before or after an event happens


-- 30)-TRANSACTIONs===

-- A]- Start the transaction:
START TRANSACTION;
-- B]- Run your sequence of statements:
-- Note: Assuming an 'Accounts' table exists to safely execute this mock transfer!
-- UPDATE Accounts SET Balance = Balance - 100 WHERE User_ID = 1;
-- UPDATE Accounts SET Balance = Balance + 100 WHERE User_ID = 2;
-- C]- Commit to save changes permanently if everything worked:
COMMIT;
-- D]- Keep Rollback commented out in our main script file. 
-- ROLLBACK;






SELECT * FROM Students;
