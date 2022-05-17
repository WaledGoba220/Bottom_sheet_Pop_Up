import 'package:flutter/material.dart';

class BottomSheetScreen extends StatelessWidget {
  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet Screen'),
      ),
      body: const Center(
        child: Text(
          'Bottom Sheet Screen',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.open_in_new),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            //  isScrollControlled: true,   // this pro open full screen
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            builder: (context) => Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Here is Open Bottom Sheet'),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Close'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
