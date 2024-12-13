import 'package:flutter/material.dart';
import 'package:todo_list/components/button.dart';

class DialogBox extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  const DialogBox({
    super.key,
    required this.controller,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.amber[200],
      title: const Center(child: Text('Nouvelle tâche')),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: "Entrez votre tâche",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Button(
                  text: 'Annuler',
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Button(text: 'Enregistrer', onPressed: onSave),
            ],
          )
        ],
      ),
      contentPadding: const EdgeInsets.all(20),
    );
  }
}
