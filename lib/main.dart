import 'package:flutter/material.dart';

void main() {
  runApp(GreetingApp());
}

class GreetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Greeting App'),
        ),
        body: GreetingScreen(),
      ),
    );
  }
}

class GreetingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red, // Red color
              fontWeight: FontWeight.bold, // Bold text
              fontSize: 24.0,
            ),
          ),
          Text(
            'Welcome to Flutter!',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          // Add an image below the new text
          Image.network(
              'https://picsum.photos/250?image=9'), // Optional: Replace with your image URL or use an asset image.
          SizedBox(
              height: 20), // Adds some space between the image and the button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Green button color
            ),
            onPressed: () {
              // Show a Snackbar when the button is pressed
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Button Pressed!')),
              );
            },
            child: Text('Press Me'),
          ),
        ],
      ),
    );
  }
}
