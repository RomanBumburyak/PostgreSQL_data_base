//8-28-17 Daily Project//
~ ❯❯❯createdb todolist          CREATE TABLE
~ ❯❯❯ psql


CREATE TABLE todo (
  id SERIAL PRIMARY KEY,                              /// SERIAL PRIMARY KEY////
  title VARCHAR(255) NOT NULL,                       ///NEEDS TO BE A STRING UP TO 255 CHARACTERS///
   details VARCHAR(1000) ,                          ///HOLDS A LARGE AMOUNT OF TEXT////
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at NOT NULL DEFAULT 'August 28,2017',
  completed_at Date,
);

Write INSERT statements to insert five todos into this table, with one of them completed.


INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Wash my car', 'wash and wax', 1, );
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Take out the trash', 'before Friday', 2, );
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Clean my room', 'vaccum and wipe', 3, );
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Clean my kitchen', 'wash the floors', 4, );
INSERT INTO todo (title, details, priority,created_at, completed_at) VALUES ('Finish my assessments', 'everything outstanding', 5,);



SELECT title, details FROM todo WHERE graduate = 't';    //////Write a SELECT statement to find all incomplete todos/////


SELECT priority FROM todo ORDER BY DESC;      //////Write a SELECT statement to find all todos with a priority above 1.////DONE.



UPDATE todo SET graduated = 't' WHERE cohort = 11;     /////Write an UPDATE statement to complete one todo by its id. Your ids may differ, so you will choose the id to up.///


DELETE FROM todo WHERE completed_at IS NULL;    ///Write a DELETE statement to delete all completed todos.///
