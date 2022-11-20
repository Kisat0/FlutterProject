# Flutter Project

Project Flutter For IT Consulting & Expertise

## /!\ Important

Si le bouton stop est appuyé, il est nécessaire de relacer l'appli, raison ci-dessous.
## Raison

La librairie "Marquee" ne prévoit pas de faire des fonctions de "stop" et "start" mais j'ai pu faire ce qu'il fallait pour mettre un bouton "stop" malgré cela, mais pour ce qui est du bouton "start" ça reste impossible à faire du fait que le widget ne se réactualise qu'à la fin de son cycle, hors avec un bouton "stop" le cycle se fige et donc impossible de réactualiser la vélocité avec un bouton "start"

## Utilisation

Le bouton "Speed" permet d'accélérer x3 la vitesse de scrolling.
Le bouton "Slow Down" permet de revenir à la vitesse initiale.
Le bouton "Stop" permet d'arrêter le scroll infinis.