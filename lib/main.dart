import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import 'package:siklet_hesapla/pages/siklet_hesapla.page.dart';
import 'package:siklet_hesapla/pages/taekwondo.page.dart';
import 'package:siklet_hesapla/pages/teknikler.page.dart';
import 'package:siklet_hesapla/pages/gam-jeom_cezalari.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taekwondo Musabık Siklet Hesapla',
      debugShowCheckedModeBanner: false,
      routes: {
        '/Taekwondo Nedir?': (context) => Taekwondo(),
        '/Teknikler': (context) => Teknikler(),
        '/Gam-Jeom Cezaları': (context) => GamJeomCezalari(),
      },
      theme: ThemeData(
        primarySwatch: Sabitler.anaRenk,
      ),
      home: SikletHesaplaPage(),
    );
  }
}
