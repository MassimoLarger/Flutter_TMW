import 'package:flutter/material.dart';

void main() {
  runApp(const MiPrimerWidget());
}

class MiPrimerWidget extends StatelessWidget {
  const MiPrimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mi Primer Widget'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  print('¡Hola Mundo!');
                },
                child: const Text('Presiona el botón para saludar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}