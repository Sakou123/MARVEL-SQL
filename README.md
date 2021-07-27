# MARVEL-SQL


## REQUETE 1 : 
```
SELECT * 
FROM film
ORDER BY DATE DESC
```

## REQUETE 2 :
```
SELECT nom,prenom,(year(now())-year(date)) AS Age
FROM acteur
WHERE DATE < "1991-01-01"
```

## REQUETE 3 :
```
SELECT * 
FROM acteur_film
JOIN film ON acteur_film.id_film = film.id
JOIN acteur ON acteur_film.id_acteur = acteur.id
WHERE film.titre = "Avengers"
```

## REQUETE 4 :
```
SELECT * 
FROM acteur_film
JOIN film ON acteur_film.id_film = film.id
JOIN acteur ON acteur_film.id_acteur = acteur.id
WHERE acteur.nom = "Evans"
```

