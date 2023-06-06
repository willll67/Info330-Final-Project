ALTER TABLE athlete_events
ADD COLUMN FirstName TEXT;

ALTER TABLE athlete_events
ADD COLUMN MiddleName TEXT;

ALTER TABLE athlete_events
ADD COLUMN LastName TEXT;

UPDATE athlete_events
SET
    FirstName = SUBSTR(Name, 1, INSTR(Name, ' ') - 1),
    MiddleName = CASE
                    WHEN Name LIKE '% % %' THEN SUBSTR(Name, INSTR(Name, ' ') + 1, INSTR(SUBSTR(Name, INSTR(Name, ' ') + 1), ' ') - 1)
                    ELSE NULL
                 END,
    LastName = CASE
                    WHEN Name LIKE '% % %' THEN SUBSTR(Name, INSTR(SUBSTR(Name, INSTR(Name, ' ') + 1), ' ') + 1)
                    ELSE SUBSTR(Name, INSTR(Name, ' ') + 1)
               END;
