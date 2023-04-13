import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import 'package:siklet_hesapla/pages/teknik_detay.page.dart';
import '../model/teknik.dart';

class TeknikItem extends StatelessWidget {
  final Teknik listelenenTeknik;
  const TeknikItem({required this.listelenenTeknik, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    TeknikDetay(secilenTeknik: listelenenTeknik),
              ),
            ),
            leading: Icon(Icons.sports_martial_arts, color: Sabitler.anaRenk),
            title: Text(
              listelenenTeknik.teknikAdi,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                color: Colors.red.shade600,
              ),
            ),
            trailing: Icon(Icons.arrow_forward_ios, color: Sabitler.anaRenk),
          ),
        ),
      ),
    );
  }
}
