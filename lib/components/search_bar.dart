import 'package:flutter/material.dart';
import 'package:flutter_examen1/pages/regions_page.dart';

class SearchBarApp extends StatefulWidget {
  const SearchBarApp({super.key});

  @override
  State<SearchBarApp> createState() => _SearchBarAppState();
}


class _SearchBarAppState extends State<SearchBarApp> {
  
  List<String> searchresults = [
      'Alsace',
      'Aquitaine',
      'Auvergne',
      'Auvergne-Rhône-Alpes',
      'Basse-Normandie',
      'Bourgogne',
      'Bourgogne-Franche-Comté',
      'Bretagne',
      'Centre',
      'Champagne-Ardenne',
      'Corse',
      'Franche-Comté',
      'Grand-Est',
      'Guadeloupe',
      'Guyane',
      'Haute-Normandie',
      'Hauts-de-France',
      'Île-de-France',
      'La Réunion',
      'Languedoc-Roussillon',
      'Languedoc-Roussillon-Midi-Pyrénées',
      'Limousin',
      'Lorraine',
      'Martinique',
      'Mayotte',
      'Midi-Pyrénées',
      'Nord-Pas-de-Calais',
      'Normandie',
      'Nouvelle-Aquitaine',
      'Pays de la Loire',
      'Picardie',
      'Poitou-Charentes',
      'Provence-Alpes-Côte dAzur',
      'Rhône-Alpes'
    ];

  @override
  Widget build(BuildContext context) {
    
            return SearchBar(
              //controller: TextEditingController(),
              constraints: const BoxConstraints(maxWidth: 250, minHeight: 40,),
              hintText: "Rechercher par région",
              padding: const MaterialStatePropertyAll<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 16.0)),
              onSubmitted: (value) {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegionPage(title : "Recherche de la région: $value")),
                );
                 },
              leading: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 39, 108, 228),
                size: 18,),
              
            );
  }
}