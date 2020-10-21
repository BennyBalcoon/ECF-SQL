
CREATE SEQUENCE prefix;
CREATE TABLE technologies
(
    tech_id TEXT NOT NULL PRIMARY KEY DEFAULT 'CD_' || nextval('prefix'
    ::regclass)::TEXT,
    tech_frenchName VARCHAR
    (255),
    tech_englishName VARCHAR
    (255)
);

    CREATE TABLE developers
    (
        dev_id SERIAL PRIMARY KEY,
        dev_codename VARCHAR(5) NOT NULL,
        dev_firstname VARCHAR(255) NOT NULL,
        dev_lastname VARCHAR(255) NOT NULL,
        dev_birthdate DATE NOT NULL,
        dev_firstDay DATE NOT NULL,
        dev_matricule VARCHAR(255) NOT NULL,
        dev_favoriteTech_id TEXT NOT NULL,
        FOREIGN KEY (dev_favoriteTech_id) REFERENCES technologies(tech_id)
    );

    CREATE TABLE developers_technologies
    (
        dev_id INTEGER NOT NULL,
        tech_id TEXT NOT NULL,
        FOREIGN KEY (dev_id) REFERENCES developers(dev_id),
        FOREIGN KEY (tech_id) REFERENCES technologies(tech_id),
    )

