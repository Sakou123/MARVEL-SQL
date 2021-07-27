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

