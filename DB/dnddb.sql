DROP DATABASE IF EXISTS dnd;
CREATE DATABASE IF NOT EXISTS dnd;
USE dnd;

CREATE TABLE campaign(
	id INT AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    setting VARCHAR(45),
    image_url VARCHAR(1000),
    PRIMARY KEY(id)
);

INSERT INTO campaign (name, description, setting)
	VALUES('Curse Of Strahd','Adventurers must defeat the vampire Strahd in the land of Barovia', 'Swamp');
INSERT INTO campaign (name, description, setting)
	values('Descent Into Avernus', 'Adventurers must defeat the god of Hell, Asmodeus and prevent him from stealing the different cities in the world', 'Hell');
    
DROP USER IF EXISTS dnduser@localhost;
CREATE USER IF NOT EXISTS dnduser@localhost IDENTIFIED BY 'dnduser';
GRANT SELECT, UPDATE, INSERT, DELETE ON dnd.* TO dnduser@localhost;