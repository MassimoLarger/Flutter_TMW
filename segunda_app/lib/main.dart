import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Segunda App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Primer Card
              Card(
                child: Column(
                  children: [
                    Image.network('https://www.ulagos.cl/wp-content/uploads/2020/12/itr.jpg'),
                    const Text('Sede Ulagos Osorno'),
                  ],
                ),
              ),
              // Segundo Card
              Card(
                child: Column(
                  children: [
                    Image.network('https://www.ulagos.cl/wp-content/uploads/2020/12/Chinquihue-scaled.jpg'),
                    const Text('Sede Ulagos Puerto Montt'),
                  ],
                ),
              ),
              // Tercer Card
              Card(
                child: Column(
                  children: [
                    Image.network('https://www.ulagos.cl/wp-content/uploads/2020/12/chiloe-scaled.jpg'),
                    const Text('Sede Ulagos Chiloé'),
                  ],
                ),
              ),
              // Botón Elevado
              ElevatedButton(
                onPressed: () {
                  _launchURL("https://www.ulagos.cl"); 
                },
                child: const Text('Ir a Ulagos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}