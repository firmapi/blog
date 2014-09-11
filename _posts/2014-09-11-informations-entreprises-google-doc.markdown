---
layout: post
title: "Obtenir les informations d'entreprises dans Google Doc"
description: "Générez une liste d'entreprises et obtenez toutes les données de votre choix directement dans Google Spreadsheet."
date: 2014-09-11
image: https://firmapi-uploads.s3.amazonaws.com/tutorials/google_doc_screenshot.png
tag: "prospection"
tag_pretty_name: "Prospection"

author: François Grante
author_twitter: FGrante
author_google_plus: https://plus.google.com/106867543078418506526
gravatar: https://secure.gravatar.com/avatar/341f6604232b625000deda790d8d39cd?d=mm&s=30&r=G
---

Dans ce tutoriel, nous allons voir :

* Comment générer une liste exhaustive d'entreprises françaises correspondant à des critères définis (code NAF, localisation, chiffre d'affaires...).

* Comment obtenir d'informations détaillées sur une liste d'entreprises à partir des numéros de SIREN.

Tout cela en utilisant Google Spreadsheet.

## Pré-requis

Aucune connaissance en programmation n'est requise. Il vous faudra simplement :

* Disposer d'une clé d'API pour Firmapi que vous pouvez obtenir en vous <a href="https://firmapi.com/api" target="_blank">inscrivant gratuitement</a>.
* Accéder à la <a href="https://docs.google.com/spreadsheets/d/1E_kQwOixwlgNjwDtvgcbIq5kuk0wLHLjrglZXgBJQOw/edit?usp=sharing" target="_blank">**feuille de calcul du tutoriel**</a> puis l'enregistrer en cliquant sur *Fichier* et *Créer une copie* (nécessaire pour pouvoir éditer le document).

<img src="https://s3-eu-west-1.amazonaws.com/firmapi-uploads/tutorials/google_doc_creer_une_copie.gif" alt="Créer une copie Google Spreadsheet" width="350" class="animated-hover"/>

## Etape 1 : Mise en route

Ouvrez votre copie du document. Vous arrivez sur un premier onglet intitulé "Configuration". Dans cet onglet, copiez votre clé API secrète dans la cellule correspondante.

## Etape 2 : Générez une liste d'entreprises

Vous pouvez générer une liste d'entreprises en fonction des critères de votre choix. Il est pour l'instant possible de segmenter en ajoutant un code postal (ou département) et un code NAF.

<img src="https://s3-eu-west-1.amazonaws.com/firmapi-uploads/tutorials/google_doc_segmentation.gif" alt="Choix des critères de segmentation" width="650" class="animated-hover"/>

La génération de la liste peut prendre quelques minutes en fonction du nombre d'entreprises.

*Note : si vous disposez d'une liste de SIREN que vous souhaitez enrichir, vous pouvez directement la copier dans la première colonne de la feuille de données et passer à la troisième étape.*

## Etape 3 : Enrichissez les données de votre liste

Après avoir réalisé l'étape 2, vous pouvez constater que la feuille "Données" a ses deux premières colonnes remplies avec le SIREN et le nom des entreprises de la liste.

Vous pouvez maintenant complèter cette base de données avec les données de votre choix (adresse, code postal, ville, chiffre d'affaires, effectif, numéro de TVA intracommunautaire... etc.).

<img src="https://s3-eu-west-1.amazonaws.com/firmapi-uploads/tutorials/google_doc_informations_entreprises.gif" alt="Choix des critères de segmentation" width="650" class="animated-hover"/>

**Attention** : Google Spreadsheet ne supporte pas un temps d'execution trop long. Ainsi, un trop grand nombre d'entreprises (plusieurs milliers) peut faire échouer le script en cours. Il est alors préférable de diviser la liste de SIREN en plusieurs parties.