CREATE TABLE `User` (
    user_id     INTEGER NOT NULL AUTO_INCREMENT,
    name        VARCHAR(128) UNIQUE,
    PRIMARY KEY(user_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE Course (
    course_id     INTEGER NOT NULL AUTO_INCREMENT,
    title         VARCHAR(128) UNIQUE,
    PRIMARY KEY(course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;

CREATE TABLE 'Member' (
    user_id       INTEGER,
    course_id     INTEGER,
    role          INTEGER,

    CONSTRAINT FOREIGN KEY (user_id) REFERENCES `User` (user_id)
      ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT FOREIGN KEY (course_id) REFERENCES Course (course_id)
       ON DELETE CASCADE ON UPDATE CASCADE,

    PRIMARY KEY (user_id, course_id)
) ENGINE=InnoDB CHARACTER SET=utf8;
INSERT INTO `User` (name) VALUES ('Brayden');
INSERT INTO `User` (name) VALUES ('Jaslyn');
INSERT INTO `User` (name) VALUES ('Keana');
INSERT INTO `User` (name) VALUES ('Odhran');
INSERT INTO `User` (name) VALUES ('Rayyan');
INSERT INTO `User` (name) VALUES ('Neil');
INSERT INTO `User` (name) VALUES ('Alex');
INSERT INTO `User` (name) VALUES ('Annika');
INSERT INTO `User` (name) VALUES ('Aryankhan');
INSERT INTO `User` (name) VALUES ('Ayva');
INSERT INTO `User` (name) VALUES ('Shanai');
INSERT INTO `User` (name) VALUES ('Aneeka');
INSERT INTO `User` (name) VALUES ('Maximillian');
INSERT INTO `User` (name) VALUES ('Noa');
INSERT INTO `User` (name) VALUES ('Olaoluwapolorimi');
INSERT INTO `Course` (title) VALUES ('si106');
INSERT INTO `Course` (title) VALUES ('si110');
INSERT INTO `Course` (title) VALUES ('si206');
-- Insert Member data for si106
INSERT INTO `Member` (user_id, course_id, role) VALUES (1, 1, 1);  -- Brayden, Instructor for si106
INSERT INTO `Member` (user_id, course_id, role) VALUES (2, 1, 0);  -- Jaslyn, Learner for si106
INSERT INTO `Member` (user_id, course_id, role) VALUES (3, 1, 0);  -- Keana, Learner for si106
INSERT INTO `Member` (user_id, course_id, role) VALUES (4, 1, 0);  -- Odhran, Learner for si106
INSERT INTO `Member` (user_id, course_id, role) VALUES (5, 1, 0);  -- Rayyan, Learner for si106

-- Insert Member data for si110
INSERT INTO `Member` (user_id, course_id, role) VALUES (6, 2, 1);  -- Neil, Instructor for si110
INSERT INTO `Member` (user_id, course_id, role) VALUES (7, 2, 0);  -- Alex, Learner for si110
INSERT INTO `Member` (user_id, course_id, role) VALUES (8, 2, 0);  -- Annika, Learner for si110
INSERT INTO `Member` (user_id, course_id, role) VALUES (9, 2, 0);  -- Aryankhan, Learner for si110
INSERT INTO `Member` (user_id, course_id, role) VALUES (10, 2, 0); -- Ayva, Learner for si110

-- Insert Member data for si206
INSERT INTO `Member` (user_id, course_id, role) VALUES (11, 3, 1); -- Shanai, Instructor for si206
INSERT INTO `Member` (user_id, course_id, role) VALUES (12, 3, 0); -- Aneeka, Learner for si206
INSERT INTO `Member` (user_id, course_id, role) VALUES (13, 3, 0); -- Maximillian, Learner for si206
INSERT INTO `Member` (user_id, course_id, role) VALUES (14, 3, 0); -- Noa, Learner for si206
INSERT INTO `Member` (user_id, course_id, role) VALUES (15, 3, 0); -- Olaoluwapolorimi, Learner for si206



SELECT user_id FROM `User` WHERE name = 'Brayden';
SELECT course_id FROM `Course` WHERE title = 'si106';
