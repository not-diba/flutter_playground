import 'package:flutter/material.dart';

main() => runApp(const Playground());

class Playground extends StatelessWidget {
  const Playground({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Playground',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _pressedOrNot = "Button not pressed.";

  void _changeText() {
    setState(() {
      if (_pressedOrNot == "Button not pressed.") {
        _pressedOrNot = "BUTTON PRESSED.";
      } else {
        _pressedOrNot = "Button not pressed.";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        _pressedOrNot,
      )),
      floatingActionButton: FloatingActionButton(onPressed: _changeText),
    );
  }
}
