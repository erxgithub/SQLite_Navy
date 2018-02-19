DROP TABLE IF EXISTS fleets;
DROP TABLE IF EXISTS ships;
DROP TABLE IF EXISTS sailors;
DROP TABLE IF EXISTS duties;

CREATE TABLE fleets (
   id INTEGER PRIMARY KEY,
   name VARCHAR(50)
);

CREATE TABLE ships (
   id INTEGER PRIMARY KEY,
   name VARCHAR(50),
   date_built DATE,
   fleet_id INTEGER,
   FOREIGN KEY(fleet_id) REFERENCES fleets(id)
);

CREATE TABLE sailors (
   id INTEGER PRIMARY KEY,
   name VARCHAR(50),
   birth_date DATE
);

CREATE TABLE duties (
   id INTEGER PRIMARY KEY,
   name VARCHAR(50),
   start_date DATE,
   end_date DATE,
   rank INTEGER,
   ship_id INTEGER,
   sailor_id INTEGER,
   FOREIGN KEY(ship_id) REFERENCES ships(id),
   FOREIGN KEY(sailor_id) REFERENCES sailors(id)
);
