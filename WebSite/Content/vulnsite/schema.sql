CREATE database if not exists web;
USE web;

DROP TABLE users;
CREATE TABLE users
(
	id INT PRIMARY KEY,
	us3rn4m3 TEXT,
	twitter TEXT,
	PassW0rdColuMn TEXT
);

DROP TABLE profiles;
CREATE TABLE profiles
(
	userid INT PRIMARY KEY,
	profile TEXT
);

INSERT INTO users (id, us3rn4m3, twitter, PassW0rdColuMn) VALUES
(
	42, 'antonio', '@antonioherraizs', 'letmetryandthinkofasecurepasswordthatyouwillneverguess1'
);
INSERT INTO users (id, us3rn4m3, twitter, PassW0rdColuMn) VALUES
(
	1337, 'justin', '@3uckaRo0', 'letmetryandthinkofasecurepasswordthatyouwillneverguess3'
);

INSERT INTO profiles (userid, profile) VALUES
(
	42, 'Antonio Herraiz is a Security Consultant at One World Labs in Denver, CO. Antonio has been writing and breaking code in different continents and languages for six years. He\'s CEH, CPT and ACE certified. He likes to chat at all levels of the stack and he\'s always trying to understand what goes on under the hood.'
);
INSERT INTO profiles (userid, profile) VALUES
(
	1337, 'Justin Whitehead is a Security and Forensic Analyst at One World Labs in Denver, CO. Justin received his Bachelors of Science in Computer Information Systems with a focus in Computer Forensics. His certifications include: CompTIA Security+, ITIL Foundations, CHFI, CCFI, CEH, CPT and ACE.'
);

-- permissions

DROP USER 'luser'@'localhost';
GRANT SELECT ON web.* TO 'luser'@'localhost' IDENTIFIED BY 's3cr3t1smIsTh3K3y';
