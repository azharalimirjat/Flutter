import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  final String data;
  const Screen2({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              onTap: () {},
              title: const Text("Second Screen"),
              subtitle: const Text("Subtitle"),
              leading: const Icon(Icons.home),
            )
            //   ListTile(
            //   onTap: () {},
            //   title: const Text("Second Screen"),
            //   subtitle: const Text("Subtitle"),
            //   leading: const Icon(Icons.home),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: Text(data),
      ),
    );
  }
}
