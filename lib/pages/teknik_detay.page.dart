import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import '../model/teknik.dart';

class TeknikDetay extends StatelessWidget {
  final Teknik secilenTeknik;
  const TeknikDetay({required this.secilenTeknik, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            title: Text(
              secilenTeknik.teknikAdi,
              style: TextStyle(fontSize: 24),
            ),
            backgroundColor: Sabitler.anaRenk.shade300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/' + secilenTeknik.teknikFoto,
                  fit: BoxFit.contain),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(4),
              child: SingleChildScrollView(
                child: Text(
                  secilenTeknik.teknikDetayi,
                  style: TextStyle(fontSize: 17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
