DROP DATABASE IF EXISTS dnd;
CREATE DATABASE IF NOT EXISTS dnd;
USE dnd;

CREATE TABLE campaign(
	id INT AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    setting VARCHAR(45),
    image_url TEXT,
    creator VARCHAR(45),
    PRIMARY KEY(id)
);

INSERT INTO campaign (name, description, setting, image_url, creator)
	VALUES('Curse Of Strahd','Adventurers must defeat the vampire Strahd in the land of Barovia', 'Swamp', 'https://www.strangeassembly.com/wp-content/uploads/2016/03/CurseofStrahd-artwork.jpg', 'Wizards of the Coast');
INSERT INTO campaign (name, description, setting, image_url, creator)
	values('Descent Into Avernus', 'Adventurers must defeat the god of Hell, Asmodeus and prevent him from stealing the different cities in the world', 'Hell', 'https://www.tribality.com/wp-content/uploads/2019/05/descent-into-avernus-cover-750x375.jpg', 'Wizards of the Coast');    

DROP USER IF EXISTS dnduser@localhost;
CREATE USER IF NOT EXISTS dnduser@localhost IDENTIFIED BY 'dnduser';
GRANT SELECT, UPDATE, INSERT, DELETE ON dnd.* TO dnduser@localhost;
