import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import 'package:siklet_hesapla/model/ceza.dart';
import 'package:siklet_hesapla/pages/ceza_detay.page.dart';

class CezaItem extends StatelessWidget {
  final Ceza listelenenCeza;
  const CezaItem({required this.listelenenCeza, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => CezaDetay(secilenCeza: listelenenCeza)),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.red.shade400,
          borderRadius: Sabitler.borderRadius,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        margin: EdgeInsets.all(6),
        child: Center(
          child: Text(
            listelenenCeza.cezaAdi,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
