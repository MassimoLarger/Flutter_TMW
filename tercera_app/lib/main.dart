import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const PokemonApp());
}

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokémon App'),
        ),
        body: CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16 / 9,
          ),
          items: [
            buildPokemonCard('Bulbasaur', 'assets/bulbasaur.png', 'Planta', 1),
            buildPokemonCard('Charmander', 'assets/charmander.png', 'Fuego', 4),
            buildPokemonCard('Squirtle', 'assets/squirtle.png', 'Agua', 7),
          ],
        ),
      ),
    );
  }

  Widget buildPokemonCard(String name, String imagePath, String element, int pokedexNumber) {
    return Card(
      child: Column(
        children: [
          // Pokémon Image
          Image.asset(
            imagePath,
            height: 200.0,
            width: 200.0,
            fit: BoxFit.cover,
          ),

          // Pokémon Details
          ListTile(
            title: Text(name),
            subtitle: Text('Pokedex #$pokedexNumber'),
          ),

          // Pokémon Tag
          buildPokemonTag(element),
        ],
      ),
    );
  }

  Widget buildPokemonTag(String element) {
    Color tagColor;

    // Asignar colores según el tipo de elemento
    switch (element.toLowerCase()) {
      case 'planta':
        tagColor = Colors.green;
        break;
      case 'fuego':
        tagColor = Colors.orange;
        break;
      case 'agua':
        tagColor = Colors.blue;
        break;
    // Puedes agregar más casos según los tipos de Pokémon que manejas
      default:
        tagColor = Colors.grey; // Color predeterminado para tipos desconocidos
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        element,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}