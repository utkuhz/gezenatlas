import 'package:flutter/material.dart';
import 'package:gezenatlas/bolgeler.dart';
import 'package:gezenatlas/gunes.dart';
import 'package:gezenatlas/hakkinda.dart';
import 'package:gezenatlas/kitalar_sayfasi.dart';
import 'package:gezenatlas/okyanus.dart';
import 'package:gezenatlas/sehir_sayfasi.dart';
import 'package:gezenatlas/ulke_sayfasi.dart';
import 'package:gezenatlas/yakinda_gelecekler.dart';
import 'package:gezenatlas/yedi_harika.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(context),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: Text("Ana Sayfa"),
      backgroundColor: Colors.indigo,
    );
  }

  Widget _buildBody() {
    return Center(
      child: Text(
        "Uygulama Ana Sayfası",
        style: TextStyle(fontSize: 36),
      ),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: FlutterLogo(),
            accountName: Text("Flutter"),
            accountEmail: Text("https://flutter.dev"),
            decoration: BoxDecoration(
              color: Colors.yellow,
            ),
          ),
          ListTile(
            title: Text('Kıtalar'),
            subtitle: Text("Dünya' daki Kıtalar\nuzun basınız"),
            onLongPress: () {
              _kitaSayfasiniAc(context);
            },
            leading: Icon(Icons.circle),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),



          ListTile(
            title: Text('16 Büyük Türk Devleti'),
            subtitle: Text("\nuzun basınaz"),
            onLongPress: () {
              _gunesSayfasiniAc(context);
            },
            leading: Icon(Icons.flag),
            trailing: Icon(Icons.star),
            onTap: () {
              Navigator.pop(context);
            },
          ),




          ListTile(
            title: Text('Ülke Sayfasi'),
            subtitle: Text("Ülkeleri Gorun\nuzun basınız"),
            onLongPress: () {
              _ulkeSayfasiniAc(context);
            },
            leading: Icon(Icons.flag),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('7 Harika'),
            subtitle: Text("  \nuzun basınız"),
            onLongPress: () {
              _harikaSayfasiniAc(context);
            },
            leading: Icon(Icons.star),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Okyanus Sayfasi'),
            subtitle: Text("Okyanus Gorun\nuzun basınız"),
            onLongPress: () {
              _okyanusSayfasiniAc(context);
            },
            leading: Icon(Icons.waterfall_chart),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Türkiye' deki Bölgeler"),
            subtitle: Text("BölgeleriGörün \nuzun basınız"),
            onLongPress: () {
              _bolgeSayfasiniAc(context);
            },
            leading: Icon(Icons.nature),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text("Türkiye' deki Şehirler"),
            subtitle: Text("Sehirleri Gorun \nuzun basınız"),
            onLongPress: () {
              _sehirSayfasiniAc(context);
            },
            leading: Icon(Icons.location_city),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Hakknda Sayfası'),
            subtitle: Text("Uygulamanın Hakkında Sayfası\nuzun basınaz"),
            onLongPress: () {
              _hakkindaSayfasiniAc(context);
            },
            leading: Icon(Icons.book),
            trailing: Icon(Icons.control_point_sharp),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Yakında Gelecekler'),
            subtitle: Text("Uygulamaya yakında gelecekler\nuzun basınaz"),
            onLongPress: () {
              _yakindaSayfasiniAc(context);
            },
            leading: Icon(Icons.book),
            trailing: Icon(Icons.control_point_sharp),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _bolgeSayfasiniAc(BuildContext context) {
    MaterialPageRoute bolgeSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Bolgeler();
      },
    );

    Navigator.push(context, bolgeSayfaYolu);
  }

  _sehirSayfasiniAc(BuildContext context) {
    MaterialPageRoute sehirSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return SehirSayfasi();
      },
    );

    Navigator.push(context, sehirSayfaYolu);
  }





  _gunesSayfasiniAc(BuildContext context) {
    MaterialPageRoute gunesSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Gunes();
      },
    );

    Navigator.push(context, gunesSayfaYolu);
  }






  _ulkeSayfasiniAc(BuildContext context) {
    MaterialPageRoute ulkeSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return UlkeSayfasi();
      },
    );

    Navigator.push(context, ulkeSayfaYolu);
  }

  _harikaSayfasiniAc(BuildContext context) {
    MaterialPageRoute harikaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return YediHarika();
      },
    );

    Navigator.push(context, harikaSayfaYolu);
  }

  _okyanusSayfasiniAc(BuildContext context) {
    MaterialPageRoute okyanusSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Okyanus();
      },
    );

    Navigator.push(context, okyanusSayfaYolu);
  }

  _kitaSayfasiniAc(BuildContext context) {
    MaterialPageRoute kitaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Kitalar();
      },
    );

    Navigator.push(context, kitaSayfaYolu);
  }

  _yakindaSayfasiniAc(BuildContext context) {
    MaterialPageRoute yakindaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Yakinda();
      },
    );

    Navigator.push(context, yakindaSayfaYolu);
  }

  _hakkindaSayfasiniAc(BuildContext context) {
    MaterialPageRoute hakkindaSayfaYolu = MaterialPageRoute(
      builder: (BuildContext context) {
        return Hakkinda();
      },
    );

    Navigator.push(context, hakkindaSayfaYolu);
  }
}
