---
layout: post
title: "Pourquoi nous avons créé un moteur de recherche et ce que nous avons appris"
description: "Firmapi était un API, c'est maintenant un moteur de recherche d'entreprises. Voici pourquoi nous avons effectué ce pivot."
date: 2014-11-16
image: "https://d144bz4d6i1vob.cloudfront.net/blog/2014-11-16/article.png"
tag: "firmapi"
tag_pretty_name: "Firmapi"

author: François Grante
author_twitter: FGrante
author_google_plus: https://plus.google.com/106867543078418506526
gravatar: https://secure.gravatar.com/avatar/341f6604232b625000deda790d8d39cd?d=mm&s=30&r=G
---

C'est le premier pivot majeur depuis que nous travaillons sur Firmapi. Nous nous éloignons de notre idée de départ, une <a href="http://api.firmapi.com/" target="_blank">API des entreprises françaises</a> et avons décidé de créer un <a href="https://firmapi.com" target="_blank">moteur de recherche d'entreprises</a>.

## Le problème

Constat : les bases de données B2B en France sont en grande majorité des bases de données d'informations légales (BODACC et Infogreffe). Ce sont des bases exhaustives et fiables, mais pour qualifier sa recherche dans le cadre d'une activité commerciale, on se retrouve vite limité.

Il est bien possible de rechercher par effectif, chiffre d'affaires ou zone géographique, mais lorsqu'on souhaite segmenter par secteur d'activité cela se complique. Les codes NAF attribués par l'INSEE sont la seule donnée à disposition et se révèlent souvent complexes et peu exploitables (feedback que nous avons eu de façon très récurrente).

## La solution

Notre solution : partir d'une recherche simple par mot clés, comme un moteur de recherche classique et générer à partir de la requête une liste d'entrepises françaises qualifiées.

Explorer avec un moteur de recherche présente plusieurs avantages :

* Cela couvre une infinité de requêtes possibles, à l'inverse d'un système de catégorisation obligeant à se limiter à des cases pré-définies.
* La rapidité d'exploration : tout part d'une requête très simple. On ne passe pas des heures à chercher parmi des listes possibles.

Il est toujours possible ensuite d'appliquer des filtres pour affiner la liste obtenue.

<img src="https://d144bz4d6i1vob.cloudfront.net/blog/2014-11-16/article.png" alt="Page de recherche Firmapi" class="img-responsive" />

## L'envers du décor : les défis techniques

Un bon moteur de recherche est sans doute une des applications les plus difficiles à développer. Voici les défis auxquels nous avons dû faire face.

### Défi n°1 : récolter un maximum de données sur les entreprises

Pour construire un moteur moteur de recherche, il faut du contenu à indexer. Le registre légal des entreprises est loin d'apporter suffisamment d'informations.

Pour cela, nous avons créé des <a href="http://fr.wikipedia.org/wiki/Robot_d'indexation" target="_blank">robots d'indexation</a> qui parcourent tout le web français. Dès que nous détectons qu'un site correspond à une entreprise française, nous l'ajoutons à l'index du moteur de recherche.

A l'heure actuelle, nous avons validé près de 100 000 sites web appartenant à des entreprises. Cet index progresse rapidement de jour en jour. Nous complétons également les données sur les entreprises en retrouvant également les profils sur les réseaux sociaux (Facebook, Twitter et Linkedin pour le moment).

Quand les utilisateurs font une recherche sur Firmapi, ils recherchent ainsi parmi une multitude de sources : base de données d'entreprises, site web, descriptions sur les réseaux sociaux...

La bonne surprise que nous avons eu, c'est le faible coût des serveurs (moins de 100€ par mois). Aujourd'hui, le coût de l'hardware est très bas et n'importe qui peut décider, pour un coût limité, de traiter une très grande quantité de données. Le vrai défi, c'est d'être capable de contrôler, analyser et faire parler toutes ces informations (vous avez dit big data ?).

### Défi n°2 : l'algorithme de recherche

C'est sans doute la partie la plus épineuse. Comment comprendre la requête de l'utilisateurs et lui retourner les meilleurs résultats ?

Le moteur de recherche Open Source <a href="http://www.elasticsearch.org/" target="_blank">Elastic Search</a> nous est d'une grand aide. Le classement par pertinence sur Firmapi se fait suivant deux grandes valeurs :

* La corrélation entre les mots clés de la recherche et les mots clés trouvés sur l'entreprise (site web et réseaux sociaux).
* L'importance et le dynamisme de l'entreprise modélisés par un score qui prend en compte de nombreux indicateurs comme la forme juridique, la croissance de l'activité, les suivis sur les réseaux sociaux... etc.

Il reste encore de grandes améliorations à apporter, comme l'analyse des champs sémantiques pour mieux cerner le contexte d'une requête.

Nous adorerions recevoir de nouveaux feedbacks pour améliorer le classement des résultats. <a href="https://firmapi.com" target="_blank">Testez des recherches</a> et écrivez-nous à <a href="mailto:bonjour@firmapi.com">bonjour@firmapi.com</a> !

## Les enseignements

**On ne peut jamais prévoir l'usage que vont faire les utilisateurs d'un produit**

En construisant un outil on imagine souvent quelques cas d'utilisation limités. Finalement, l'utilisateur qui découvre le produit emprunte des chemins qu'on n'imaginait pas en concevant l'outil.

Par exemple, nous avons été surpris de voir que dans 80% des cas, la première recherche que fait un visiteur est le nom d'une entreprise qu'il connaît pour tester le moteur. Nous avons ainsi dû adapter l'interface et l'algorithme pour que cette première expérience soit plus souvent réussie (en séparant notamment la recherche d'un nom d'entreprise).

D'où l'importance de tester et suivre l'utilisation en permanence et ne jamais développer de nouvelles features tant que ce qui est en ligne n'est pas validé. Je vous laisse (re)lire les grands principes du <a href="http://fr.wikipedia.org/wiki/Lean_Startup" target="_blank">Lean Startup</a> sur l'itération ;-)

**Pas besoin d'être ingénieur chez Google pour développer un produit technique**

Ayant tous les deux des profils non-techniques (sous-entendu : nous ne sommes pas passés par une école d'ingénieur), nous n'imaginions pas il y a quelques mois développer un moteur de recherche. <a href="https://twitter.com/antoinefink" target="_blank">Antoine</a> a appris à gérer et traiter de grosses quantités de données ce qui nous a permis d'envisager de nouvelles voies au fur et à mesure.

L'important est de savoir apprendre vite et persévérer malgré la difficulté. Heureusement, l'essor de l'Open Source permet d'avancer rapidement et se focaliser sur ce qui rend son produit unique au lieu de réinventer la roue à chaque fois.