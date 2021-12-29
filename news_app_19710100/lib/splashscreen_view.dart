import 'dart:async';
import 'package:flutter/material.dart';
import 'package:news_app_19710100/main.dart';
// import 'package:news_app_19710100/home/home_view.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key key}) : super(key: key);
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    openSplashScreen();
  }

  openSplashScreen() async {
    //bisa diganti beberapa detik sesuai keinginan
    var durasiSplash = const Duration(seconds: 10);
    return Timer(durasiSplash, () {
      //pindah ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/splash.png'),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: ListTile(
                title: Text(
                  'Nama : Muhamad Farid Muarif',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Hug Me Tight',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: ListTile(
                title: Text(
                  'Tempat Tanggal Lahir : Tabalong,30 Juli 2001',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Hug Me Tight',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: ListTile(
                title: Text(
                  'NPM : 19710100',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Hug Me Tight',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: ListTile(
                title: Text(
                  'Alamat : Jl.Tanjung Puteri Pembataan',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Hug Me Tight',
                      fontSize: 20.0),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
              child: ListTile(
                title: Text(
                  'Kelas : SI 5A Reguler Banjarbaru',
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Hug Me Tight',
                      fontSize: 20.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
