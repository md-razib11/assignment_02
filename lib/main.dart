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
          
          Image.network(
              'https://picsum.photos/250?image=9'), 
          SizedBox(
              height: 20), 
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Green button color
            ),
            onPressed: () {
              
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
