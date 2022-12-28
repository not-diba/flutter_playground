// App0806.dart

import 'package:flutter/material.dart';

void main() => runApp(App0803());

class App0803 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => MovieTitlePage(),
        '/details': (context) => DetailPage(),
        '/details/cast': (context) => CastPage(),
        '/details/reviews': (context) => ReviewsPage(),
      },
    );
  }
}

class MovieTitlePage extends StatelessWidget {
  const MovieTitlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _easyScaffold(
      appBarTitle: 'Movie Title Page',
      body: _easyButton(
        context,
        label: 'Go to Detail Page',
        whichRoute: '/details',
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _easyScaffold(
      appBarTitle: 'Detail Page',
      body: Column(
        children: <Widget>[
          _easyButton(
            context,
            label: 'Go to Cast Page',
            whichRoute: '/details/cast',
          ),
          _easyButton(
            context,
            label: 'Go to Reviews Page',
            whichRoute: '/details/reviews',
          ),
        ],
      ),
    );
  }
}

class CastPage extends StatelessWidget {
  const CastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _easyScaffold(
      appBarTitle: 'Cast Page',
      body: Container(),
    );
  }
}

class ReviewsPage extends StatelessWidget {
  const ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _easyScaffold(
      appBarTitle: 'Reviews Page',
      body: Container(),
    );
  }
}

Widget _easyScaffold({String? appBarTitle, Widget? body}) {
  return Scaffold(
    appBar: AppBar(
      title: Text(appBarTitle!),
    ),
    body: body,
  );
}

Widget _easyButton(
  BuildContext context, {
  required String label,
  required String whichRoute,
}) {
  return ElevatedButton(
    child: Text(label),
    onPressed: () {
      Navigator.pushNamed(
        context,
        whichRoute,
      );
    },
  );
}
