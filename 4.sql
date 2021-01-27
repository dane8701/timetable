/* Script de mot de passe */

ALTER TABLE ENSEIGNANTS
    ADD password VARCHAR(20) NULL;

ALTER TABLE ETUDIANT
    ADD password VARCHAR(20) NULL;

UPDATE ENSEIGNANTS
    SET password = MD5(&password)
WHERE CODEENS = &matricule;

UPDATE ETUDIANT
    SET password = MD5(&password)
WHERE MATRICULE = &matricule;