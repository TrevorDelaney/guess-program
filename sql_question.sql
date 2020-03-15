/* The following program was created using Microsoft SQL Server 2017 */

DROP TABLE IF EXISTS Person;

GO

CREATE TABLE Person(
	person_id	INT			NOT NULL	PRIMARY KEY	IDENTITY,
	last		VARCHAR(50)	NOT NULL,
	first		VARCHAR(50)	NOT NULL,
	gender		CHAR(1)		NOT NULL,
	DoB			DATE		NOT NULL,
	CHECK (gender IN ('M', 'F', 'O'))
);

GO

INSERT INTO Person
(last, first, gender, DoB)
VALUES 
	('Delaney', 'Trevor', 'M', '1996/08/26'),
	('Doe', 'Jane', 'F', '1990/01/18'),
	('Adams', 'Douglas', 'M', '1970/11/02'),
	('Penn', 'Amy', 'F', '1999/05/14'),
	('Loren', 'Matthew', 'M', '1962/04/08');

GO

/* Select all Males or people born after February 2nd 1995 */
SELECT * FROM Person
WHERE gender = 'M' OR DoB > '1995/02/02';

GO

/* Change the Date of Birth of Males with the last name Adams to December 1st 1970 */
UPDATE Person
SET DoB = '1970/12/01'
WHERE last = 'Adams' AND gender = 'M'

/* Change everyone with a first name 'Matthew' to Females named 'Leona' */
UPDATE Person
SET gender = 'F', first = 'Leona'
WHERE first = 'Matthew'

/* Add 1 year to the Date of Birth for everyone with a last name starting with 'D' */
UPDATE Person
SET DoB = DATEADD(YEAR, 1, DoB)
WHERE LEFT(last, 1) = 'D';

GO

/* Test results of Update statements */
SELECT * FROM Person;