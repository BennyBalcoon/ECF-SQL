INSERT INTO technologies
    (tech_frenchName, tech_englishName)
VALUES
    ('Angulaire', 'Angular'),
    ('Noeud', 'Node'),
    ('Javanaise', 'Java'),
    ('Réagir', 'React')
;

INSERT INTO developers
    (dev_codename, dev_firstname, dev_lastname, dev_birthdate, dev_firstDay, dev_matricule, dev_favoriteTech_id)
VALUES
    ('JD', 'John', 'Doe', '1958-12-24', '1980-09-01', 'XTR667', 'CD_4'),
    ('MP', 'Micheline', 'Presle', '1934-08-12', '1964-05-25', 'HYU954', 'CD_5'),
    ('BB', 'Benoit', 'brisefer', '1947-11-11', '1978-01-05', 'DAP552', 'CD_3')
;

INSERT INTO developers_technologies
    (dev_id, tech_id)
VALUES
    (1, 'CD_3'),
    (1, 'CD_6'),
    (3, 'CD_4'),
    (3, 'CD_5'),
    (3, 'CD_6')
;