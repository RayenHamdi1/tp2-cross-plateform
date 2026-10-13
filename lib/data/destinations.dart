import '../models/destination.dart';

const List<String> categories = ['Tout', 'Plage', 'Désert', 'Culture'];

const List<Destination> destinations = [
  Destination(
    nom: 'Sidi Bou Saïd',
    region: 'Tunis',
    image: 'assets/images/sidi_bou_said.png',
    note: 4.8,
    prix: 150,
    categorie: 'Culture',
    description: 'Village blanc et bleu perché au-dessus de la mer.',
  ),
  Destination(
    nom: 'Djerba',
    region: 'Médenine',
    image: 'assets/images/djerba.png',
    note: 4.7,
    prix: 180,
    categorie: 'Plage',
    description: 'Île de plages dorées et de villages traditionnels.',
  ),
  Destination(
    nom: 'Tozeur',
    region: 'Tozeur',
    image: 'assets/images/tozeur.png',
    note: 4.9,
    prix: 200,
    categorie: 'Désert',
    description: 'Oasis aux portes du Sahara, entourée de palmeraies.',
  ),
  Destination(
    nom: 'El Jem',
    region: 'Mahdia',
    image: 'assets/images/el_jem.png',
    note: 4.6,
    prix: 120,
    categorie: 'Culture',
    description: 'Amphithéâtre romain parmi les mieux conservés au monde.',
  ),
  Destination(
    nom: 'Douz',
    region: 'Kébili',
    image: 'assets/images/douz.png',
    note: 4.8,
    prix: 170,
    categorie: 'Désert',
    description: 'La porte du désert, célèbre pour ses dunes.',
  ),
  Destination(
    nom: 'Hammamet',
    region: 'Nabeul',
    image: 'assets/images/hammamet.png',
    note: 4.5,
    prix: 160,
    categorie: 'Plage',
    description: 'Station balnéaire connue pour ses plages et sa médina.',
  ),
];
