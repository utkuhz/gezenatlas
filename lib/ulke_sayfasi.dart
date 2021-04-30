import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:gezenatlas/ulke.dart';

class UlkeSayfasi extends StatelessWidget {
  List<Ulke> _ulkeler = [
    Ulke("Türkiye", 780000, 80000000),
    Ulke("Amerika",10000000, 300000000),
    Ulke("Almanya", 3555456, 80000000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ülke Sayfası"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: _ulkeler.length,
          itemBuilder: _listeOgesiOlustur,
        ),
      ),
    );
  }

  Widget _listeOgesiOlustur(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_ulkeler[index].isim),
        subtitle: Text(_ulkeler[index].nufus.toString()),
        trailing: Text(_ulkeler[index].yuzolcumu.toString()),
        leading: Icon(Icons.flag),
      ),
      elevation: 10,
    );
  }
}
