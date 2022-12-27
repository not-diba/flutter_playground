import 'package:flutter/material.dart';

import 'playground_1.dart';

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
      home: const SafeArea(
        child: _MyHomePage(),
      ),
    );
  }
}

class _MyHomePage extends StatelessWidget {
  const _MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: buildColumn(context),
      ),
    );
  }
}

Widget buildTitleText() {
  return Container(
    margin: const EdgeInsets.only(top: 10.0),
    child: const Text(
      "My Playground",
      textScaleFactor: 3.0,
      textAlign: TextAlign.center,
    ),
  );
}

Widget buildRoundedBox(
  String label, {
  double height = 88.0,
}) {
  return Container(
    height: height,
    width: 88.0,
    alignment: const Alignment(0.0, 0.0),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color.fromRGBO(255, 87, 51, 1.0)),
        borderRadius: const BorderRadius.all(
          Radius.circular(20.0),
        )),
    child: Text(
      label,
      textAlign: TextAlign.center,
    ),
  );
}
