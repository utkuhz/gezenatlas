import 'package:flutter/material.dart';

import 'ana_sayfa.dart';

void main() {
  runApp(AnaUygulama());
}

class AnaUygulama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: AnaSayfa(),
    );
  }
}
