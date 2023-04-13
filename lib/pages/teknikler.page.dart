import 'package:flutter/material.dart';
import 'package:siklet_hesapla/model/teknik.dart';
import 'package:siklet_hesapla/helper/teknikler_data_helper.dart';
import 'package:siklet_hesapla/widgets/teknik_item.dart';

class Teknikler extends StatelessWidget {
  late List<Teknik> tumTeknikler;

  Teknikler() {
    tumTeknikler = teknikVerileri();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Musabaka Teknikleri',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: tumTeknikler.length,
          itemBuilder: (BuildContext context, int index) {
            return TeknikItem(listelenenTeknik: tumTeknikler[index]);
          },
        ),
      ),
    );
  }

  List<Teknik> teknikVerileri() {
    List<Teknik> gecici = [];
    for (int i = 0; i < 6; i++) {
      String teknikAdi = DataHelper.Teknik_Adlari[i];
      String teknikDetay = DataHelper.Teknik_Ozellikleri[i];
      var teknikResim = DataHelper.Teknik_Adlari[i] + '.png';
      Teknik eklenecekTeknik = Teknik(teknikAdi, teknikDetay, teknikResim);
      gecici.add(eklenecekTeknik);
    }
    return gecici;
  }
}
