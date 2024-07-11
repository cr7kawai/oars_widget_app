import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: const Text('Hola mundo'),
        action: SnackBarAction(
          label: 'Aceptar', 
          onPressed: (){}
        ),
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Snackbar y diálogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licencias usadas'),
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Hola')
                  ]
                );
              },
            ),
            const SizedBox(height: 20,),
            FilledButton.tonal(
              child: const Text('Mostrar diálogo'),
              onPressed: (){},
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackBar(context), 
      ),
    );
  }
}