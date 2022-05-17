import 'package:flutter/material.dart';

class PopUpDialogueScreen extends StatelessWidget {
  const PopUpDialogueScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pop Up Dialogue Screen'),
      ),
      body: const Center(
        child: Text(
          'Pop Up Dialogue Screen',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.open_in_new),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) =>  AlertDialog(
              title: const Text('Dialogue'),
              content: const Text(
                  'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
              actions: [
                TextButton(
                  onPressed: () {
                    // navigate to any screen
                  },
                  child: const Text('agreed'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('close'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
