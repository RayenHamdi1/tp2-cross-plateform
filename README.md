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
 
