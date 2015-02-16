---
layout: post
title: "Comment toucher toutes les entreprises de son secteur sur Twitter en 10 minutes"
description: "Voici comment utiliser Twitter et Firmapi pour lancer une action ciblée auprès de clients potentiels en quelques minutes."
modified: 2014-12-05
image: "https://d144bz4d6i1vob.cloudfront.net/blog/2015-02-13/format_csv_comptes_twitter.png"
tag: "marketing"
tag_pretty_name: "Marketing"

author: François Grante
author_twitter: FGrante
author_google_plus: https://plus.google.com/106867543078418506526
gravatar: https://secure.gravatar.com/avatar/341f6604232b625000deda790d8d39cd?d=mm&s=30&r=G
---

Twitter est un outil précieux en B2B pour attirer l'attention et créer une première relation. Dans ce tutoriel, nous allons voir comment lancer une action très ciblée et réalisable très rapidement pour créer un premier contact avec vos clients potentiels.

## Etape 1 : Générez une liste de comptes Twitter d'entreprises parfaitement ciblées

Une technique courante est de lister les comptes en faisant une recherche dans les descriptions des comptes, avec des outils tels que <a href="https://followerwonk.com/" target="_blank">Followerwonk</a>. Le problème est que les résultats sont très aléatoires ; il est très difficile de trouver un mot clé commun utilisé par les entreprises ciblées dans leurs descriptions.

C'est pourquoi je vous propose d'utiliser <a href="https://firmapi.com">Firmapi</a>. Vous pourrez générer une liste exhaustive de comptes Twitter d'entreprises correspondant exactement à vos critères (secteur, localisation, chiffre d'affaires, date de création...etc.).

Faites une <a href="https://firmapi.com/advanced_search">recherche</a> avec les critères qui définissent votre cible, puis ajoutez un filtre pour n'obtenir que les entreprises ayant un compte Twitter :

<img alt="Filtre pour avoir les comptes Twitter" src="https://d144bz4d6i1vob.cloudfront.net/blog/2015-02-13/twitter_filter.gif" style="border-bottom: 1px solid #333;" class="img-responsive">

Il ne vous reste plus qu'à commander l'export. Ne gardez que la colonne des comptes Twitter pour que votre fichier ressemble à ça :

<img alt="Fprùat du fichier CSV" src="https://d144bz4d6i1vob.cloudfront.net/blog/2015-02-13/format_csv_comptes_twitter.png" style="border-bottom: 1px solid #333;" class="img-responsive">

Puis enregistrez au format CSV.

Si vous ne souhaitez pas commander de fichier mais tester quand même la technique, je vous ai préparé un <a href="https://d144bz4d6i1vob.cloudfront.net/blog/2015-02-13/tofollow.csv">**CSV d'exemple**</a> avec des comptes Twitter à suivre ;)

## Etape 2 : Suivre tous les comptes de la liste

Pour cela, nous allons utiliser <a href="https://addons.mozilla.org/fr/firefox/addon/imacros-for-firefox/" target="_blank">iMacros</a> sur Firefox (je vous déconseille l'extension Chrome qui est peu stable). iMacros est une extension bien pratique permettant d'automatiser toutes sortes de tâches sur son navigateur.

Installez l'extension puis cliquez sur le bouton iMacros dans le navigateur qui ouvrira une interface sur votre gauche. Faites un clic droit sur *#Current.iim* puis "Editer la Macro". Collez le code suivant :

<script src="https://gist.github.com/FGrante/f7b906353940677bf88d.js"></script>

Que fait ce code ?

* Il va chercher votre CSV qu'il faudra mettre dans le même dossier que votre Macro (vous pouvez le retrouver ou l'éditer dans l'onglet "Manage" puis dans "Paths")
* Il crée une boucle pour chaque ligne du CSV
* Il va sur le profil Twitter du compte indiqué sur chaque ligne
* Il clique sur le bouton de suivi

J'ai également ajouté des temps d'attentes entre chaque action pour s'assurer du bon chargement de la page à chaque fois.

**Attention !**
Veillez à ne pas faire un suivi trop massif pour rester sous les radars de Twitter. Ne suivez pas plus de quelques centaines de comptes toutes les 24 heures. Si votre liste est plus importante, faites un découpage en plusieurs jours. Si votre compte est récent, soyez encore plus prudent (le seuil de tolérance est plus bas).

## La clé : un profil pertinent par rapport à votre cible

Pour que cette action sur Twitter soit efficace, travaillez au maximum la description de votre compte Twitter. Le taux de *follow back* est généralement entre 20 et 30%, mais variera sensiblement en fonction de la pertinence de votre profil par rapport à votre cible. Il en est de même pour le taux de personnes visitant votre site après vous avoir vu sur Twitter.

A vous de jouer !