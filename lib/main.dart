import 'package:flutter/material.dart';

// import 'playground_1.dart';

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
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const _youAre = "You are";
const _compatible = "compatible with \nDorris D. Developer.";

class _MyHomePageState extends State<MyHomePage> {
  bool _ageSwitchValue = false;
  String _messageToUser = "$_youAre NOT $_compatible";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Are you compatible with Doris?"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            _buildAgeSwitch(),
            _buildResultArea(),
          ],
        ),
      ),
    );
  }

  Widget _buildAgeSwitch() {
    return Row(
      children: <Widget>[
        const Text("Are you 18 or Older ?"),
        Switch(
          value: _ageSwitchValue,
          onChanged: _updateAgeSwitch,
        )
      ],
    );
  }

  Widget _buildResultArea() {
    double loveFlutterSliderValue = 1.0;

    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: _updateResults,
          child: const Text("Submit"),
        ),
        const SizedBox(width: 15.0),
        const Text(
            "On a scale of 1 to 10, how much do you love flutter apps ?"),
        Slider(
          min: 1.0,
          max: 10.0,
          divisions: 9,
          value: loveFlutterSliderValue,
          onChanged: _updateLoveFlutterSlider,
          label: "${loveFlutterSliderValue.toInt()}",
        ),
        Text(
          _messageToUser,
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  void _updateLoveFlutterSlider(double x) {
    setState(() {
      loveFlutterSliderValue = x;
    });
  }

  void _updateResults() {
    setState(() {
      _messageToUser =
          _youAre + (loveFlutterSliderValue >= 8 ? " " : " NOT ") + _compatible;
    });
  }

  void _updateAgeSwitch(bool x) {
    setState(() {
      _ageSwitchValue = x;
    });
  }

  // void _updateResults() {
  //   setState(() {
  //     _messageToUser = "You are${_ageSwitchValue ? " " : " NOT "}$_compatible";
  //   });
  // }
}
