 Palier 2 : réponses aux questions de compréhension

1. Où se place l'avatar si on enlève le `Expanded` autour de la `Column` ? Pourquoi ?**
L'avatar se place juste à côté du texte, à gauche, et non tout à droite. Sans `Expanded`, la `Column` prend seulement la largeur de son contenu. Le `Row` ne donne pas la place restante à la `Column`, donc l'avatar vient juste après elle. Avec `Expanded`, la `Column` prend toute la place libre et pousse l'avatar à droite.

2. Pourquoi `prenom` est-il déclaré `final` ?**
Un `StatelessWidget` ne change pas après sa création : ses données sont fixes. Avec `final`, la valeur est donnée une seule fois par le constructeur et ne peut plus être modifiée. Si le prénom change, Flutter crée un nouveau widget.

3. Quelle différence entre `cs.primary` et `Colors.teal` si on change la `seedColor` du thème ?**
`cs.primary` vient de la palette du thème, donc il change quand on change


Palier 3 : réponses aux questions de compréhension

 RÉPONSES COURTES : QUESTIONS DE COMPRÉHENSION (PALIER 3 - HERO BANNER)



 4. Placez le DecoratedBox en premier dans la liste children. 
     Que voyez-vous ? Pourquoi ?


 L'image recouvre le DecoratedBox et le dégradé disparaît. 
 Dans un `Stack`, les éléments s'empilent du bas vers le haut : l'élément placé 
 en dernier s'affiche au-dessus des autres.

 
 5. Retirez ClipRRect. Qu'est-ce qui change ?

 RÉPONSE :
 Les coins de l'image ne sont plus arrondis. 
 `ClipRRect` sert à découper l'image selon le rayon de bordure (borderRadius) 
 défini pour qu'elle épouse la forme de la carte.


 6. Pourquoi le Positioned des textes a-t-il right: 130 ? 
 
 Pour réserver un espace à droite et empêcher le texte d'empiéter sur 
 le bouton / la flèche d'action à droite de la bannière.

Palier 4 : réponses aux questions de compréhension

7. Pourquoi la Row « note / prix » a-t-elle besoin que la Column soit dans 
     un Expanded pour que Spacer fonctionne ?

 Le widget `Spacer` nécessite une taille définie pour savoir quel espace occuper. 
 L'envelopper dans un `Expanded` impose des contraintes de largeur à la Column, 
 ce qui permet à `Spacer` de calculer l'espace disponible et de séparer correctement 
 la note et le prix.

 
 8. Combien de lignes faudrait-il ajouter pour afficher une 7e destination ? 
     Dans quel fichier ?
 
 - Fichier : `lib/data/destinations.dart`
 - Lignes à ajouter : **11 lignes** (soit 1 objet `Destination`).
 
Palier 5 : réponses aux questions de compréhension

9. Que se passe-t-il si on écrit `_categorie = c;` sans `setState` ?
   Quel est le résultat à l'écran ? Et en mémoire ?

 - À l'écran : rien ne change. La puce ne se coche pas et la liste des
   cartes reste la même, car Flutter ne sait pas qu'il doit redessiner l'écran.
 - En mémoire : la variable `_categorie` prend bien la nouvelle valeur.
 - `setState` sert à prévenir Flutter d'appeler `build()` à nouveau.


 10. Pourquoi `_filtrees` est-il un getter recalculé à chaque `build()`
     plutôt qu'une variable ?

 Un getter est recalculé à chaque utilisation, donc il suit toujours la valeur
 actuelle de `_categorie`. Une variable serait calculée une seule fois et garderait
 l'ancienne liste : il faudrait la mettre à jour à la main après chaque clic.


 11. Pourquoi `HeroBanner` peut-il rester un `StatelessWidget` alors que
     l'écran change ?

 `HeroBanner` n'a pas d'état à lui : il affiche toujours la même destination
 (`destinations.first`) et ne dépend pas de la catégorie choisie. Seul
 `HomeScreen` garde l'état (`_categorie`), donc seul lui est un `StatefulWidget`.



 tp S4
 Palier 2 — Questions
Q1. Filtrez « Désert », ouvrez Tozeur, puis revenez. Le filtre est-il conservé ? Pourquoi ?
Réponse : Oui, le filtre est conservé. Quand on ouvre Tozeur, on ajoute un nouvel écran avec Navigator.push. Quand on revient avec Navigator.pop, l’écran précédent est toujours dans la pile, donc son état (le filtre) est gardé. TP4_Rihla_Navigation_Formulaires

Q2. Comment DetailScreen connaît-il la destination ?
Réponse : La destination est envoyée à DetailScreen dans son constructeur. C’est le même principe utilisé dans le TP 3 : on passe les données d’un écran à un autre. TP4_Rihla_Navigation_Formulaires

Q3. Que se passe-t-il si on retire clipBehavior ?
Réponse : L’effet d’animation quand on touche la carte peut dépasser les coins arrondis de la carte. clipBehavior permet de garder cet effet à l’intérieur des coins. TP4_Rihla_Navigation_Formulaires

Palier 3 — Questions

Q1. Que fait _formKey.currentState!.validate() ? Que renvoie-t-elle ?
Réponse : Elle vérifie tous les champs du formulaire avec leurs validateurs.  
- Si tout est correct → elle renvoie true.
- S’il y a une erreur → elle renvoie false et affiche les messages d’erreur. TP4_Rihla_Navigation_Formulaires
Q2. Quelle est la différence entre inputFormatters et validator ?
Réponse :  
- inputFormatters contrôlent ce que l'utilisateur peut écrire. Par exemple, le téléphone accepte seulement les chiffres et maximum 8 chiffres.
- validator vérifie si la valeur finale est correcte et affiche un message d'erreur si nécessaire. TP4_Rihla_Navigation_Formulaires

Q3. Pourquoi appeler dispose() sur les contrôleurs ?
Réponse : Pour libérer les ressources utilisées par les TextEditingController quand l'écran est fermé. TP4_Rihla_Navigation_Formulaires
Palier 4 — Questions

Q1. Pourquoi le champ date est readOnly ?
Réponse : Parce que l'utilisateur ne doit pas écrire la date avec le clavier. Il doit choisir la date avec le calendrier showDatePicker. TP4_Rihla_Navigation_Formulaires

Q2. _total est un getter. Pourquoi n'a-t-on pas besoin de le mettre à jour nous-mêmes ?
Réponse : Parce que _total est recalculé automatiquement chaque fois qu'on le demande. Quand la formule change, _prixParPersonne change aussi, donc _total donne automatiquement le nouveau prix. TP4_Rihla_Navigation_Formulaires
Palier 5 — Questions
Q1. Que vaut reservation si l'utilisateur quitte le formulaire avec la flèche retour ?
Réponse : reservation vaut null, car aucune réservation n'a été validée et renvoyée. TP4_Rihla_Navigation_Formulaires

Q2. Pourquoi faut-il tester mounted après await ?
Réponse : Parce que pendant le await, l'écran peut être fermé. Le test mounted vérifie que l'écran existe encore avant d'utiliser son context. Cela évite une erreur. TP4_Rihla_Navigation_Formulaires

Q3. Le bouton « Parfait » utilise Navigator.pop. Qu'est-ce que cela nous apprend ?
Réponse : Une boîte de dialogue est aussi un écran placé dans la pile de navigation. Navigator.pop permet donc de fermer la boîte de dialogue et revenir à l'écran précédent.