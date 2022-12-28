import 'package:flutter/material.dart';

import 'main.dart';

extension MoreMovieTitlePage on MovieTitlePageState {
  goToDetailPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const DetailPage(),
      ),
    );
  }

  Widget buildTitlePageCore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        const Text(
          'Being John Malkovich',
          textScaleFactor: 1.5,
        ),
        const SizedBox(height: 16.0),
        ElevatedButton.icon(
          icon: const Icon(Icons.arrow_forward),
          label: const Text('Details'),
          onPressed: goToDetailPage,
        ),
      ],
    );
  }
}

extension MoreDetailPage on DetailPage {
  Widget buildDetailPageCore(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          overview,
        ),
      ],
    );
  }
}
