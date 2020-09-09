=============================
Pour lancer le projet Oscar :
=============================

* Lancer une console powershell depuis le dossier Oscar, exécuter :
	composer update
	symfony serve -d
 	symfony console doctrine:database:create

* Ouvrir phpMyAdmin -> mySql
* Sélectionner la base de donnée vide nouvellement créée.
* Importer le fichier oscar_dev.sql dans cette base de donnée.

* Lancer le projet dans votre navigateur sur le port affiché par : symfony serve -d

Cela devrait fonctionner.



