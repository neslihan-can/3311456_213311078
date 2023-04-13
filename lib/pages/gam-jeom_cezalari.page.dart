import 'package:flutter/material.dart';
import 'package:siklet_hesapla/model/ceza.dart';
import 'package:siklet_hesapla/helper/ceza_data_helper.dart';
import 'package:siklet_hesapla/widgets/ceza_item.dart';

class GamJeomCezalari extends StatelessWidget {
  late List<Ceza> tumCezalar;

  GamJeomCezalari() {
    tumCezalar = cezaVerileri();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Gam-Jeom Cezaları',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: tumCezalar.length,
        itemBuilder: (BuildContext context, int index) {
          return CezaItem(listelenenCeza: tumCezalar[index]);
        },
      ),
    );
  }

  List<Ceza> cezaVerileri() {
    List<Ceza> gecici = [];
    for (int i = 0; i < 12; i++) {
      String cezaAdi = DataHelper.Ceza_Adlari[i];
      String cezaDetay = DataHelper.Ceza_Detayi[i];
      Ceza eklenecekCeza = Ceza(cezaAdi, cezaDetay);
      gecici.add(eklenecekCeza);
    }
    return gecici;
  }
}
