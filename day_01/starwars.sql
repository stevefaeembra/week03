-- make table
DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  color VARCHAR(255) ,
  hilt_metal VARCHAR(255),
  character_id INT8 REFERENCES characters(id)
);

-- insert

INSERT INTO CHARACTERS(name, darkside, age) VALUES ('Obi Wan Kenobi', false, 27);
INSERT INTO CHARACTERS(name, darkside, age) VALUES ('Darth Maul', true, 35);
INSERT INTO CHARACTERS(name, darkside, age) VALUES ('Anakin Skywalker', false, 10);

-- insert some lightsabers
INSERT INTO lightsabers(color, hilt_metal, character_id) VALUES ('green', 'iron',1);
INSERT INTO lightsabers(color, hilt_metal, character_id) VALUES ('red', 'metal',2);

-- example with NULL for unspecified values
INSERT INTO CHARACTERS(name, darkside) VALUES('Yoda', false);

-- read

SELECT * FROM characters ORDER BY id ASC;
SELECT * FROM lightsabers ORDER BY id ASC;
