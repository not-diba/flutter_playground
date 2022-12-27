import 'package:flutter/material.dart';

import 'main.dart';

Widget buildColumn(BuildContext context) {
  return Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      buildTitleText(),
      const SizedBox(height: 20.0),
      buildRoundedBox(
        "Sale Today",
        height: 150.0,
      )
    ],
  );
}
