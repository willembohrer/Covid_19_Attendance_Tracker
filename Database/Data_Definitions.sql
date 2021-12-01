/*DECLARATION OF ALL TEST DATA USED.*/
INSERT INTO ROLE (NAME, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Professor', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ROLE (NAME, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Developer', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO ACCESS (NAME, DESCRIPTION, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Basic', 'TEST ACCESS DESCRIPTION', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ACCESS (NAME, DESCRIPTION, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('None', 'NO ACCESS DESCRIPTION', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO PROFESSOR (ROLE_ID, ACCESS_ID, USERNAME, FIRSTNAME, LASTNAME, NAME, PASSWORD, PASSWORDUPDATEDON, EMAILADDRESS, PHONENUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (1, 1, 'wbohrer', 'Willem', 'Bohrer', 'Willem Bohrer', CRYPT('WillemPass', GEN_SALT('bf')), NOW()::TIMESTAMPTZ(0), 'Willem.Bohrer@ndsu.edu', '(218) 830-9504', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO PROFESSOR (ROLE_ID, ACCESS_ID, USERNAME, FIRSTNAME, LASTNAME, NAME, PASSWORD, PASSWORDUPDATEDON, EMAILADDRESS, PHONENUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (1, 1, 'nmarcotte', 'Nathan', 'Marcotte', 'Nathan Marcotte', CRYPT('NathanPass', GEN_SALT('bf')), NOW()::TIMESTAMPTZ(0), 'Nathan.Marcotte@ndsu.edu', '(701)555-5555', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO PROFESSOR (ROLE_ID, ACCESS_ID, USERNAME, FIRSTNAME, LASTNAME, NAME, PASSWORD, PASSWORDUPDATEDON, EMAILADDRESS, PHONENUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (1, 1, 'aschug', 'Ansley', 'Schug', 'Ansley Schug', CRYPT('AnsleyPass', GEN_SALT('bf')), NOW()::TIMESTAMPTZ(0), 'ansley.schug@ndsu.edu', '(701)555-5555', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO ROOM (BUILDING, NUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Quentin Burdick', '102', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ROOM (BUILDING, NUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Quentin Burdick', '116', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ROOM (BUILDING, NUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Wallman Wellness Center', 'Aquatics', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ROOM (BUILDING, NUMBER, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Gate City Bank', 'Auditorium', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO ROOM_SCHEDULE (ROOM_ID, STARTTIME, ENDTIME, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (1, NULL, NULL, NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ROOM_SCHEDULE (ROOM_ID, STARTTIME, ENDTIME, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (2, NULL, NULL, NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO CLASS (PROFESSOR_ID, ROOM_SCHEDULE_ID, NAME, NUMBER, SECTION, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (1, 1, 'CSCI 160', '160', 1, NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO CLASS (PROFESSOR_ID, ROOM_SCHEDULE_ID, NAME, NUMBER, SECTION, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (2, 2, 'CSCI 161', '161', 2, NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO STUDENT (NAME, EMAILADDRESS, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('David Kerannen', 'david.kerannen@ndsu.edu', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO STUDENT (NAME, EMAILADDRESS, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES ('Tyler Housey', 'tyler.housey@ndsu.edu', NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);

INSERT INTO ATTENDANCE (STUDENT_ID, ROOM_SCHEDULE_ID, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (1, 1, NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
INSERT INTO ATTENDANCE (STUDENT_ID, ROOM_SCHEDULE_ID, CREATEDON, CREATEDBY, LASTUPDATEON, LASTUPDATEDBY, ACTIVE)
  VALUES (2, 2, NOW()::TIMESTAMPTZ(0), 'willembohrer', NOW()::TIMESTAMPTZ(0), 'willembohrer', TRUE);
