import 'package:firstlab/ToDo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDo(),
    );
  }
}

// class MyHome extends StatefulWidget {
//   const MyHome({super.key});

//   @override
//   MyHomeState createState() => MyHomeState();
// }

// class MyHomeState extends State<MyHome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: const Text("This is Azhar Ali here")),
//         // body: const Text("Hello"),
//         body: ListView(
//           scrollDirection: Axis.horizontal,
//           children: [
//             Image(
//                 "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpriceoye.pk%2Flaptops%2Fhp%2Fhp-laptop-eq2180au-15-6-inches-amd-ryzen-5-8gb-ram-512gbssd%2Fppc%2Fgold%2F512gb%2520-%25208gb%2520ram&psig=AOvVaw3uwBxxiTZ1DdTlz4w6M3UI&ust=1723011658795000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCNjx2fvc34cDFQAAAAAdAAAAABAK"),
//           ],
//         ));
//   }
// }
