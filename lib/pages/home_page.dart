import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/video_hero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});

  final String title;

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
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 280),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 227, 230, 236),
            ),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
             Text(
              "Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book",
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            SearchBar(
              constraints:BoxConstraints(minWidth: 50.0, minHeight: 56.0),
              hintText: "Rechercher par région",
              backgroundColor:MaterialStatePropertyAll(
                 Color.fromARGB(19, 177, 175, 175),
              ) ,
              leading: Icon(
                Icons.search,
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
