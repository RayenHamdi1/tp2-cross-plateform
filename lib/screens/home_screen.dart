import 'package:flutter/material.dart';

import '../widgets/destination_card.dart';
import '../data/destinations.dart';
import '../widgets/home_header.dart';
import '../widgets/search_box.dart';
import '../widgets/hero_banner.dart';
import '../widgets/section_title.dart';
import '../models/destination.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _categorie = 'Tout'; // l'état : la catégorie choisie
  int _onglet = 0;

  List<Destination> get _filtrees {
    if (_categorie == 'Tout') return destinations;
    return destinations.where((d) => d.categorie == _categorie).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _onglet == 0
          ? _construireAccueil()
          : const SafeArea(child: Center(child: Text('Bientôt disponible'))),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _onglet,
        onDestinationSelected: (i) {
          setState(() {
            _onglet = i;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore_outlined),
            selectedIcon: Icon(Icons.explore),
            label: 'Explorer',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite_border),
            selectedIcon: Icon(Icons.favorite),
            label: 'Favoris',
          ),
          NavigationDestination(
            icon: Icon(Icons.person_outline),
            selectedIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  Widget _construireAccueil() {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 100),
        children: [
          const HomeHeader(prenom: 'Rayen'),
          const SizedBox(height: 20),
          const SearchBox(),
          const SizedBox(height: 20),
          HeroBanner(destination: destinations.first),
          const SizedBox(height: 20),
          const SectionTitle(titre: 'Catégories'),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (final c in categories)
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: ChoiceChip(
                      label: Text(c),
                      selected: _categorie == c,
                      onSelected: (_) {
                        setState(() {
                          _categorie = c;
                        });
                      },
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const SectionTitle(titre: 'Populaires', action: 'Voir tout'),
          const SizedBox(height: 12),
          for (final d in _filtrees)
            DestinationCard(key: ValueKey(d.nom), destination: d),
        ],
      ),
    );
  }
}
