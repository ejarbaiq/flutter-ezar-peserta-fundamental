import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  int result = 0;

  void addNumbers() {
    setState(() {
      int firstNumber = int.parse(firstNumberController.text);
      int secondNumber = int.parse(secondNumberController.text);
      result = firstNumber + secondNumber;
    });
  }

  void subtractNumbers() {
    setState(() {
      int firstNumber = int.parse(firstNumberController.text);
      int secondNumber = int.parse(secondNumberController.text);
      result = firstNumber - secondNumber;
    });
  }

  void multiplyNumbers() {
    setState(() {
      int firstNumber = int.parse(firstNumberController.text);
      int secondNumber = int.parse(secondNumberController.text);
      result = firstNumber * secondNumber;
    });
  }

  void divideNumbers() {
    setState(() {
      int firstNumber = int.parse(firstNumberController.text);
      int secondNumber = int.parse(secondNumberController.text);
      result = firstNumber ~/ secondNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Result = $result',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,   
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
              controller: firstNumberController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter first number',
                ),
              ),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
              controller: secondNumberController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter second number',
                ),
              ),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: addNumbers,
              child: Text('Add'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: subtractNumbers,
              child: Text('Subtract'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: multiplyNumbers,
              child: Text('Multiply'),
            ),
            SizedBox(height: 16), // add vertical space of 16 pixels
            ElevatedButton(
              onPressed: divideNumbers,
              child: Text('Divide'),
            ),
          ],
        ),
      ),
    );
  }
}