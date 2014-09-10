---
layout: post
title: "Afficher un autocomplete avec toutes les entreprises Françaises"
description: "Réaliser en 10 minutes un autocomplete d'entreprises et de leurs information en javascript."
date: 2014-09-08
image: https://firmapi-uploads.s3.amazonaws.com/tutorials/autocomplete_tutorial.jpg
tag: "technique"
tag_pretty_name: "Technique"

author: Antoine Finkelstein
author_twitter: AntoineFink
author_google_plus: https://plus.google.com/101945414886534617277
gravatar: https://secure.gravatar.com/avatar/28470def10eda769aea68284c919493f?d=mm&s=40&r=G
---

<div class="alert alert-success gap-sm">
  <span>
    <i class="fa fa-github gap-right-xs"></i>
    Retrouvez l'ensemble du code source <strong><a href="https://github.com/Firmapi/autocomplete" target="_blank"> sur Github</a></strong>.
  </span>
</div>

### Pré-requis

* Disposer d'une clé d'API pour Firmapi que vous pouvez obtenir en vous <a href="https://firmapi.com/api" target="_blank">inscrivant gratuitement</a>.
* Quelques connaissances en HTML et JavaScript.

### Etape 1 : La base HTML

Je vous propose de simplement copier une base pour le HTML. J'ai utilisé Twitter Bootstrap et quelques lignes de CSS :

* <a href="https://github.com/Firmapi/autocomplete/blob/master/index.html" target="_blank">index.html</a>
* <a href="https://github.com/Firmapi/autocomplete/blob/master/main.css" target="_blank">main.css</a>

### Etape 2 : Les librairies JS

Quelques librairies JavaScript sont nécessaires :

* <a href="https://github.com/twitter/typeahead.js" target="_blank">Typehead.js</a> se chargera de générer l'autocomplete de manière générale. Typeahead sera disponible sous la forme d'un plugin de jQuery ;
* <a href="http://handlebarsjs.com/" target="_blank">Handlebars.js</a> gère le template utilisé par chacune des suggestions. Vous pouvez aisément passer à Moustache, Underscore, etc. ;
* <a href="http://jquery.com/" target="_blank">JQuery</a> simplifie la sélection d'éléments du DOM et réaliser un appel en AJAX pour extraire les données de l'entreprise sélectionnée.

### Etape 3 : Installation de Typeahead.js

Typeahead.js fonctionne avec deux modules très distincts :

1. **Bloodhound, le moteur de suggestion** qui à partir des résultats renvoyés par le JSON va essayer de fournir les éléments les plus proches de la requêtes de l'utilisateur. Pour nous cela n'aura pas d'utilité car Firmapi se charge déjà de sélectionner les entreprises.
2. **Le plugin jQuery se chargeant de l'affichage de l'autocomplete**.

<br>

#### Commençons par initialiser Bloodhound :

<br>

<script src="https://gist.github.com/AntoineFinkelstein/6d32eb682533b47e2fd0.js"></script>

Nous venons avant toute chose d'indiquer que les données sont à charger en AJAX (d'où le terme *remote*). On indique alors une url à laquelle envoyé les requêtes. Le filtre permet de retraiter les réponses du serveur. En effet voici le JSON retourné par nos serveurs :

<img src="https://firmapi-uploads.s3.amazonaws.com/tutorials/autocomplete_json.jpg" width="300" class="animated-hover"/>

Il est donc nécessaire de prendre les entreprises dans result >> list et par la suite de créer un Array d'objets contenant les valeurs de chaque entreprises. D'où la nécessité de réaliser une boucle afin de retraîter sur chacun des résultats.

<br>

#### Il ne reste plus qu'à se charger du l'UI (interface utilisateur) avec le plugin jQuery :

<br>

<script src="https://gist.github.com/AntoineFinkelstein/2e2d0cc45063b167bb73.js"></script>

Avec jQuery, on sélectionne l'input qui va devenir un autocomplete. Le moteur Bloodhound initialisé précédement va être utilisé. On utilise ensuite un template Handlebar. Vous remarquerez que les variables définies dans le filtre de Bloodhound sont disponibles avec <code>{{variable}}</code>. Dans le template, utilisez librement HTML et classes CSS.

L'API renvoie en plus du nom de l'entreprise, son SIREN, son code postal et son code NAF. Pour exploiter ces informations, des événements sont déclenchés par Typeahead et en particulier <code>typeahead:selected</code> lorsqu'un résultat est sélectionné. Ici nous appelons la fonction *complete_company(siren)* pour remplir la page mais vous pouvez tout aussi bien enregistrer des champs formulaire pour accélérer la saisie, etc.

### Résultat final

<figure class="animated-demo">
<img src="https://firmapi-uploads.s3.amazonaws.com/tutorials/autocomplete_demo.gif" width="450" class="animated-hover"/>
</figure>

### Conclusion

**En quelques dizaines de minutes vous pouvez ainsi ajouter à votre site un autocomplete parfaitement fonctionnel.** N'oubliez toutefois pas de faire passer toutes les requêtes par votre serveur afin de cacher votre clé API et éviter des abus de la part de vos utilisateurs.