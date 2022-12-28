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
      home: SafeArea(
        child: MovieTitlePage(),
      ),
    );
  }
}

class MovieTitlePage extends StatefulWidget {
  @override
  MovieTitlePageState createState() => MovieTitlePageState();
}

class MovieTitlePageState extends State<MovieTitlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie Title',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: buildTitlePageCore(),
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final overview = '(From themoviedb.com) One day at work, unsuccessful '
      'puppeteer Craig finds a portal into the head of actor John '
      'Malkovich. The portal soon becomes a passion for anybody who '
      'enters its mad and controlling world of overtaking another human '
      'body.';

  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Details',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: buildDetailPageCore(context),
        ),
      ),
    );
  }
}
