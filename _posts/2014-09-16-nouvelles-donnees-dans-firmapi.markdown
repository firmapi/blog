---
layout: post
title: "De nouvelles données pour les commerciaux dans Firmapi"
description: "Après de nombreuses demandes, nous ajoutons des données de contact, les adresse des réseaux sociaux et le nom des gérants des entreprises dans l'API."
date: 2014-09-16
image: https://s3-eu-west-1.amazonaws.com/firmapi-assets/blog/2014-09-17/firmapi-api-screenshot.png
tag: "firmapi"
tag_pretty_name: "Firmapi"

author: François Grante
author_twitter: FGrante
author_google_plus: https://plus.google.com/106867543078418506526
gravatar: https://secure.gravatar.com/avatar/341f6604232b625000deda790d8d39cd?d=mm&s=30&r=G
---

Après de nombreuses demandes, nous avons le plaisir d'ajouter de nouvelles données dans <a href="https://firmapi.com/api">notre API</a>. Nous ajoutons trois nouveaux types de données :

* des informations de contact (email, téléphone)
* les adresse des réseaux sociaux
* le nom des gérants

## Les téléphones et emails d'entreprises

Les informations de contact sont des informations précieuses, notamment pour tout ceux qui utilisent Firmapi pour leur *Business Development*. Depuis plusieurs mois, nous travaillons ainsi pour intégrer les emails de contact et numéros de téléphone.

Ces données sont essentiellement issues des sites web des entreprises. Tous les jours, des milliers de sites web d'entreprises sont explorés pour indexer les adresses email et téléphones que les entreprises acceptent de diffuser.

Au moment où j'écris ces lignes, l'API répertorie **227 492 emails** et **1 113 657 numéros de téléphone**.

**Note :** contrairement aux autres données de l'API, les informations de contact ne sont pas disponibles par défaut. <a href="https://firmapi.com/contact">Contactez-nous</a> pour pouvoir en bénéficier.


## Le nom des gérants

C'est sans doute ce qui nous a été le plus demandé depuis que nous avons mis en ligne l'API. C'est maintenant chose faite.

Le nom des gérant provient des annonces légales (BODACC) publiées à chaque dépôt de statuts d'entreprises. Nous faisons le maximum pour que cette information soit toujours disponible et dans un format standardisé.

Nous avons actuellement **493 043 noms de gérants** appartenant à **330 142 entreprises**.


## L'arrivée de données sociales

Nous avons aussi le plaisir d'ajouter les premières données sociales à l'occasion de cette mise à jour. Ainsi, nous commençons à ajouter les URL des profils Facebook, Twitter et Google+ aux données d'entreprises.

Là encore, ces données sont principalement issues de l'analyse des sites web des entreprises. En fonction des demandes, nous pourrons enrichir ces données sociales avec d'autres types de profils sociaux et des indicateurs pour chaque réseau social (suivis, activité, etc.).

Actuellement, **7282 pages Facebook**, **4978 profils Twitter** et **2180 pages Google+** d'entreprises sont indexés dans l'API. Nous espérons faire croître rapidement la quantité données sociales pour permettre un usage courant.