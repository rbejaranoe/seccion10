import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  _showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Hola mundo")));
  }

  openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Estas seguro?"),
          content: const Text("Texto descriptivo"),
          actions: [
            TextButton(onPressed: () => context.pop(), child: const Text("Cancelar")),
            TextButton(onPressed: () => context.pop(), child: const Text("Aceptar")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y Dialogos'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text("Licencias usadas en la App."),
                ]);
              },
              child: const Text("Licencias Usadas"),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar Dialogo"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _showCustomSnackBar(context),
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_rounded),
      ),
    );
  }
}
