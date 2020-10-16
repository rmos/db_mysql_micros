USE mysql;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'toor';
ALTER USER 'usermicros'@'%' IDENTIFIED WITH mysql_native_password BY 'pswmicros';


/**************************************************** DATABASE **********************************************/


DROP DATABASE IF EXISTS cursomicros;
CREATE DATABASE cursomicros CHARACTER SET utf8 COLLATE utf8_general_ci;
USE cursomicros;


/**************************************************** TABLES **********************************************/

CREATE TABLE languages (id INT NOT NULL AUTO_INCREMENT, lang VARCHAR(80) NOT NULL,  PRIMARY KEY (id));


CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT, 
	name VARCHAR(100) NOT NULL, 
	user_id VARCHAR(80) NOT NULL, 
	password_hash VARCHAR(80) NULL,
    entorno VARCHAR(80) NULL,  
    PRIMARY KEY (id)
) AUTO_INCREMENT = 1000 ;


CREATE TABLE environments (
    id INT NOT NULL AUTO_INCREMENT, environment VARCHAR(100) NOT NULL, PRIMARY KEY (id)
) AUTO_INCREMENT = 1000 ;


/*************************************** INSERTS **********************************/

INSERT INTO languages(lang) values ('Java');
INSERT INTO languages(lang) values ('.Net');
INSERT INTO languages(lang) values ('Node');


INSERT INTO users(name, user_id, password_hash, entorno) VALUES('Admin SB', 'adminsb', '$2b$10$V.7UcIFjqRHDenkdZREO8O8kKmtCnu.aiO5PfoWWAGvkbQEMTjb5y', 'epd');
INSERT INTO users(name, user_id, password_hash, entorno) VALUES('Usuario Test', 'user1', '$2b$10$/SY47jfAgxyFY5ynzn7XpO7WkKqrYiBMluLAmGozdjCaeo8vaZyLm', 'epi1');


INSERT INTO environments(environment) VALUES('epd');
INSERT INTO environments(environment) VALUES('epi1');
INSERT INTO environments(environment) VALUES('epr');
