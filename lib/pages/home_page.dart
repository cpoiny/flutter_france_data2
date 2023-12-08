import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/pages/regions_page.dart';
import 'package:flutter_examen1/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      // burgerMenu
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 107, 126, 123)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "France Data",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Atlas des données françaises",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage(title: 'France Data')),
                );
              },
              leading : const Icon(Icons.home, size :20),
              title: const Text('Accueil', style: TextStyle(fontSize: 18)
              ),
            ),
              ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegionPage(title: "Recherche par régions")),
                );
              },
              leading : const Icon(Icons.map, size :20),
              title: const Text('Régions', style: TextStyle(fontSize: 18)
              ),
            ),
              ListTile(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingsPage(title: "Paramètres")),
                );
              },
              leading : const Icon(Icons.settings, size :20),
              title: const Text('Paramètres', style: TextStyle(fontSize: 18)
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        // agencement des sections du body en colonne
        children: <Widget>[
          // sections du body
          //... ici empilez les differentes sections du body.
          //... séparez les avec du padding
          const VideoHero(), // component affichant un Hero avec un background Video
          Container(
            padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 52, 104, 194),
            ),
            child: const Text(
              "I. Nos Régions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
              color: Colors.cyanAccent,
            )),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 200),
            child: const Column(
              // mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               // SizedBox(height: 20.0),
                Text(
                  "Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
                SearchBar(
                  controller: _searchController,
                  constraints: BoxConstraints(maxWidth: 250, minHeight: 40,),
                  hintText: "Rechercher par région",
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(19, 223, 219, 219),
                  ),
                  leading: Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 42, 75, 133),
                  ),
                ),
                Text(
                  "Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                  style: TextStyle(
                  color: Color.fromARGB(255, 161, 158, 158),
                  fontSize: 8,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final TextEditingController _searchController = TextEditingController();
