import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fantonial - Lab_Exam',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> names = ["Randulf Fantonial", "Yul John Jaranilla", "Christian Macatangay", "Nap Carlo Baclayon"];

  int countLetters(String name) {
    return name.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView Builder'),
        leading: IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            print('gi tuplok');
          },
        ),
        backgroundColor: Colors.lightBlue, // Set the color to sky blue
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          String name = names[index];
          int letterCount = countLetters(name);
          return ListTile(
            leading: Icon(Icons.person), // Person icon before the name
            title: Text(name),
            subtitle: Text('Letters: $letterCount'),
          );
        },
      ),
    );
  }
}
