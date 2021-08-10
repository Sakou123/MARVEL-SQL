# MARVEL-SQL


## REQUETE 1 : (les titres et dates de sorties des films du plus récent au plus ancien)
```SQL
SELECT titre, date 
FROM film
ORDER BY DATE DESC
```

## REQUETE 2 : (les noms, prénoms et ages des acteurs de plus de 30 ans dans l'ordre alphabétique)
```SQL
SELECT nom,prenom,(year(now())-year(date)) AS Age
FROM acteur
WHERE DATE < "1991-01-01"
ORDER BY nom ASC
```

## REQUETE 3 : (la liste des acteurs pour un film donné)
```SQL
SELECT * 
FROM acteur_film
JOIN film ON acteur_film.id_film = film.id
JOIN acteur ON acteur_film.id_acteur = acteur.id
WHERE film.titre = "Avengers"
```

## REQUETE 4 : (la liste des films pour un acteur donné)
```SQL
SELECT * 
FROM acteur_film
JOIN film ON acteur_film.id_film = film.id
JOIN acteur ON acteur_film.id_acteur = acteur.id
WHERE acteur.nom = "Evans"
```

## BONUS 5 : Ajouter un film: Iron Man 5 par Michael Bay
```sql
INSERT INTO film(titre,realisateur,duree,date)
VALUES ('Iron Man 5','Michael Bay','123','2023')
```
## BONUS 6 : Ajouter un acteur:
```sql
INSERT INTO acteur(nom,prenom,date)
VALUES ('Bettany', 'Paul','1971-05-27')
```
## BONUS 7 : Modifier un film: IronMan 5 -> IronMan 6 trompé de numéro
```sql
UPDATE film
SET titre = "Iron Man 5"
WHERE film.titre = "Iron Man 6"
```
## BONUS 8 : Supprimer un acteur: Tuer Paul Bettany
```sql
DELETE FROM acteur
WHERE acteur.nom = "Bettany" AND acteur.prenom = "Paul"
```
## BONUS 9 : Afficher les 3 derniers acteurs ajoutés:
```sql
SELECT prenom, nom
FROM acteur
ORDER BY id DESC LIMIT 3
```
