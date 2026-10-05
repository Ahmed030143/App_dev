import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic App - Assignment #01',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const BasicAppScreen(),
    );
  }
}

class BasicAppScreen extends StatefulWidget {
  const BasicAppScreen({super.key});

  @override
  State createState() => _BasicAppScreenState();
}

class _BasicAppScreenState extends State {
  // State variable to store the button action message
  String _buttonMessage = '';

  void _onButtonPressed() {
    setState(() {
      _buttonMessage = 'Button was clicked successfully!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Assignment #01'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Name and Roll Number with styling
              const Text(
                'Name: Rafique Ahmed',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Roll No: 23-BSCS-25',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 30),

              // Welcome/Display Message with styling
              const Text(
                'Welcome to Flutter Fundamental Widgets Assignment!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),

              // Button
              ElevatedButton(
                onPressed: _onButtonPressed,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 12,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('Click Me'),
              ),
              const SizedBox(height: 20),

              // Display message when button is clicked
              if (_buttonMessage.isNotEmpty)
                Text(
                  _buttonMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
