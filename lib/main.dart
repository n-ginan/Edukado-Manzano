import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Edukado Manzano',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edukado Manzano',
        ),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 24,
          color: Color.fromRGBO(255, 249, 102, 1.0),
        ),
        backgroundColor: const Color.fromRGBO(40, 42, 54, 1.0),
      ),
      backgroundColor: const Color.fromRGBO(40, 42, 54, 1.0),
      body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text(
                "MIS",
                style: TextStyle(
                    color: Color.fromRGBO(255, 249, 102, 1.0)
                ),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 1,
              height: 5,
            ),
            ListTile(
              title: Text(
                "Testing",
                style: TextStyle(
                    color: Color.fromRGBO(255, 249, 102, 1.0)
                ),
              ),
            ),
          ], // Children
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(40, 42, 54, 0.5),
        tooltip: "Increment",
        child: const Icon(
          Icons.add,
          color: Color.fromRGBO(255, 249, 102, 1.0),
          size: 50,
        ),
        onPressed: (){},
      ),
    );
  }
}

