import 'package:firstlab/Screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const ToDo(),
        "/sceen2": (context) => const Screen2(
              data: "Nothing to shows",
            )
      },
      initialRoute: "/home",
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _TodoAppState();
}

class _TodoAppState extends State<ToDo> {
  final List<String> myList_1 = [
    "MAD Assignment",
    "Practical DS&A",
    "Exam preparation ",
    "Meeting",
    "Medicine time",
  ];

  final List<String> myList_2 = [
    "Task 01",
    "Task 02",
    "Task 03",
    "Task 04",
    "Task 05",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.flutter_dash,
          color: Colors.white,
        ),
        title: const Text(
          "ToDo Creator",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: false,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        color: Colors.white,
                        elevation: 3,
                        child: ListTile(
                          subtitle: Text(
                            myList_1[index],
                            style: const TextStyle(
                                fontSize: 24, color: Colors.black87),
                          ),
                          trailing: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.delete,
                                size: 28,
                                color: Colors.grey,
                              ),
                              Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 28,
                              ),
                            ],
                          ),
                          title: Text(
                            myList_2[index],
                            style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.green),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 40),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Screen2(
                                data: "Data is sent from here",
                              )));
                    },
                    label: const Text("save"),
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.save),
                    onPressed: () {
                      const EdgeInsets.all(8);
                      Builder(builder: (context) {
                        return ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Button CLicked!"),
                              ),
                            );
                          },
                          child: const Text("Add Tasks"),
                        );
                      });
                    },
                    label: const Text("delete"),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.blueGrey,
    );
  }
}
