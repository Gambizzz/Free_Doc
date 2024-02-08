# README
Ici on a créé une application FreeDoc dont la base de données va nous permettre de prendre connaissance des informations des docteurs, des patients et des rendez-vous associés.

Création de plusieurs models avec leurs attributs, création des relations (en 1-N et en N-N) entre chaque model :
- Pour chaque docteur on peut voir son prénom, son nom, son adresse et sa ville.
- Pour chaque rendez-vous on peut voir la date, le patient_id, le doctor_id et le city_id.
- Pour chaque patient on peut voir son prénom, son nom et son city_id.
- Pour chaque spécialité on peut voir son nom.
- Pour chaque city on peut voir son nom.
- Dans la table doctor_specialities on peut voir pour chaque doctor_id le speciality_id correspondant.