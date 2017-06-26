CREATE TABLE Title(
	Title_Name 		VARCHAR(10) 	NOT NULL,
	Title_number	INT 			NOT NULL,
	Salary 			VARCHAR(15) 	NOT NULL,
	PRIMARY KEY (Title_number),
	CONSTRAINT check_title CHECK(Title_Name IN ('Manager','Chef', 'Employee', 'SuperVisor'))
);
   
CREATE TABLE Employee(
	FName 			VARCHAR(20) 	NOT NULL,
	LName 			VARCHAR(20) 	NOT NULL,
	Ppsn			VARCHAR(20) 	NOT NULL,
	Address 		VARCHAR(50) 	NOT NULL,
	Sex 			VARCHAR(10) 	NOT NULL,
	Birth_date 		VARCHAR(20)		NOT NULL,
	Title_num 		INT 			NOT NULL,
	Availability 	VARCHAR(20)		NOT NULL,
	PRIMARY KEY (Ppsn),
	FOREIGN KEY (Title_num) REFERENCES Title(Title_number),
	CONSTRAINT check_m_or_f CHECK(Sex IN ('M','F')),
	CONSTRAINT check_PPS CHECK (Ppsn < 10)
); 

CREATE TABLE Unit(
	Unit_num 				INT 		NOT NULL,
	Location 				VARCHAR(20) NOT NULL,
	Opening_time			VARCHAR(10) NOT NULL,
	Closing_time 			VARCHAR(10) NOT NULL,
	PRIMARY KEY (Unit_num),
	CONSTRAINT check_location CHECK(Location IN ('Meerkat','Picnic Bench','Sea Lion Cove','Ice-cream Bikes','Costa Coffee'))
);
CREATE TABLE Area_of_Field(
 	Area_Name 				VARCHAR(15)  NOT NULL,
 	Area_ID 				INT 		 NOT NULL,
 	PRIMARY KEY (Area_ID),
 	CONSTRAINT check_area CHECK(Area_Name IN ('Kitchen Staff','Floor Staff','Till Staff','Barista','Management', 'Supervising'))
);

CREATE TABLE Employee_Contact(
	Dependent_name 		VARCHAR(20) 	NOT NULL,
	Emp_Ppsn 			VARCHAR(20) 	NOT NULL,
	Sex 			    VARCHAR(10)  	NOT NULL,
	Relationship 		VARCHAR(50) 	NOT NULL,
	Birth_date 			VARCHAR(20) 	NOT NULL,
	PRIMARY KEY (Emp_Ppsn, Dependent_name),
	FOREIGN KEY (Emp_Ppsn) REFERENCES Employee(Ppsn)
);

CREATE TABLE Job_Type(
	Job_Ppsn	 		VARCHAR(20) 	NOT NULL,
	Area_job 			INT				NOT NULL,
	Unit_number			INT             NOT NULL,
	Hours_given_weekly 	INT  			NOT NULL,
	PRIMARY KEY (Job_Ppsn),
	FOREIGN KEY (Unit_number) REFERENCES Unit(Unit_num),
	FOREIGN KEY (Job_Ppsn) REFERENCES Employee(Ppsn),
	FOREIGN KEY (Area_job) REFERENCES Area_of_Field(Area_ID)
);



