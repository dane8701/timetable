/* Script de mot de passe */

ALTER TABLE ENSEIGNANTS
    ADD password VARCHAR(20) NULL;

ALTER TABLE ETUDIANT
    ADD password VARCHAR(20) NULL;

UPDATE ENSEIGNANTS
    SET password = '000'||' &password '||INSTR('&&', '0', 1, 4||' IUC'||)
WHERE CODEENS = &matricule;
UPDATE ETUDIANT
    SET password = '000'||' &password '||INSTR('&&', '0', 1, 4||' IUC'||)
WHERE MATRICULE = &matricule;