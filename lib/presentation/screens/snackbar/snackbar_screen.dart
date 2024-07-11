import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
                    const Text('Aute proident officia laborum adipisicing dolore tempor ipsum incididunt exercitation aliquip sunt minim deserunt irure. Sit et pariatur pariatur adipisicing ullamco tempor excepteur consequat incididunt nisi aute. Voluptate veniam in dolore adipisicing officia aliquip id voluptate proident. In quis quis qui tempor mollit quis nisi amet eiusmod. Sint et dolor ipsum tempor aliqua velit reprehenderit sint dolore cillum.')
                  ]
                );
              },
            ),
            const SizedBox(height: 20,),
            FilledButton.tonal(
              child: const Text('Mostrar diálogo'),
              onPressed: () => openDialog(context),
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

  void openDialog(BuildContext context){
    // Builder es en tiempo de ejecución
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Dest fugiat magna commodo nostrud. Excepteur nulla ad incididunt cillum aute voluptate adipisicing. Ad do eiusmod ullamco laboris sit et ipsum labore eu aliquip.'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancelar')
          ),
          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Aceptar')
          )
        ],
      ),
    );
  }
}