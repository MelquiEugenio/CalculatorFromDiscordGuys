import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final textEditor = TextEditingController();

  // Helper function to create a calculator button
  Widget buildButton(String text, Color color) {
    return SizedBox(
      width: 60,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            // Handle button press logic
            if (text == '=') {
              // Perform calculation
              // This is a placeholder, actual calculation logic needed
              textEditor.text = 'Result';
            } else {
              textEditor.text += text;
            }
          });
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Corrected the property
          padding: EdgeInsets.all(8.0), // Adjust padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4), // Small border radius for square shape
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8.0),
              child: TextField(controller: textEditor),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('7', Colors.blue),
                    buildButton('8', Colors.blue),
                    buildButton('9', Colors.blue),
                    buildButton('/', Colors.orange),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('4', Colors.blue),
                    buildButton('5', Colors.blue),
                    buildButton('6', Colors.blue),
                    buildButton('*', Colors.orange),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('1', Colors.blue),
                    buildButton('2', Colors.blue),
                    buildButton('3', Colors.blue),
                    buildButton('-', Colors.orange),
                  ],
                ),
                SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('0', Colors.blue),
                    buildButton('.', Colors.blue),
                    buildButton('=', Colors.orange),
                    buildButton('+', Colors.orange),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
