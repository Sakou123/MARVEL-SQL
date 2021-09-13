## Première étape :
```
- Recupèrer les JSON via PHP et les mettre dans un Array
```
## Deuxième étape :
```
- Les rendre lisibles pour PHP avec "json_decode" tout en selectionant les 3 info nécessaires pour l'API
```
## Troisième étape :
```
- Transposition des données JSON vers l'Array avant d'utiliser "json_encode" pour transformer 
  l'Array a l'état de JSON pour qu'il soit compris par L'API.

+ Affichage des données avec un "echo" pour vérifier que tout s'est bien passé avant l'étape finale.
```
## Dernière étape :
```
- Envoi de chaque JSON vers l'API tous composés de 3 données : 
  -matricule
  -adAccountID
  -currentStep
  
Puis vérification que tout s'est bien passé en allant sur Swagger avec la fonction GET 
```
