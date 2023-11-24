import 'package:flutter/material.dart';

void main() {
  runApp(const MiPrimerWidget());
}

class MiPrimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Primer Widget'),
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
              child: Text('Presiona el boton para saludar'),
            ),
          ],
        ),
      ),
    );
  }
}