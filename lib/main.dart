import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: "Ball Scoring App",
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int Nepal = 0;
  int India = 0;

  void AddNepal() {
    setState(() {
      Nepal++;
    });
  }

  void ReNepal() {
    if (Nepal == 0) return;
    setState(() {
      Nepal--;
    });
  }

  void AddIndia() {
    setState(() {
      India++;
    });
  }

  void ReIndia() {
    if (India == 0) return;
    setState(() {
      India--;
    });
  }

  void Reset() {
    setState(() {
      Nepal = 0;
      India = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    "Nepal",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "$Nepal",
                        style: TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            AddNepal();
                          },
                          child: Icon(Icons.add)),
                      ElevatedButton(
                          onPressed: () {
                            ReNepal();
                          },
                          child: Icon(Icons.remove)),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  const Text(
                    "India",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "$India",
                        style: TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            AddIndia();
                          },
                          child: const Icon(Icons.add)),
                      ElevatedButton(
                          onPressed: () {
                            ReIndia();
                          },
                          child: const Icon(Icons.remove)),
                    ],
                  )
                ],
              )
            ],
          ),
          MaterialButton(
            onPressed: () {
              Reset();
            },
            color: Colors.teal,
            height: 50,
            minWidth: 250,
            child: const Text("Reset"),
          )
        ],
      ),
    );
  }
}
