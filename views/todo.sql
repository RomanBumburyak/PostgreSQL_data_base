//8-28-17 Daily Project//
~ ❯❯❯createdb todolist          CREATE TABLE
~ ❯❯❯ psql


CREATE TABLE todo (
  id SERIAL PRIMARY KEY,                              /// SERIAL PRIMARY KEY////
  title VARCHAR(255) NOT NULL,                       ///NEEDS TO BE A STRING UP TO 255 CHARACTERS///
   details VARCHAR(1000) ,                          ///HOLDS A LARGE AMOUNT OF TEXT////
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP
);


INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish my assessments', 'everything outstanding', 1,'2017-08-28 12:55:32');
INSERT INTO todo (title, details, priority, created_at) VALUES ('Take out the trash', 'before Friday', 2,'2017-09-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at) VALUES ('Clean my room', 'vaccum and wipe', 3, '2017-09-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at) VALUES ('Clean my kitchen', 'wash the floors', 4, '2017-09-28 12:55:32');
INSERT INTO todo (title, details, priority,created_at) VALUES ('Wash my Car', 'wash and wax', 5, '2017-09-28 12:55:32');



SELECT title FROM todo WHERE completed = NULL;

SELECT priority FROM todo ORDER BY DESC;

UPDATE todo SET completed_at = '2017-08-28 12:55:32' WHERE id = 1;


DELETE FROM todo WHERE completed_at IS NOT NULL;
