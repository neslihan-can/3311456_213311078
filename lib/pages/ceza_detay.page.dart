import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import '../model/ceza.dart';

class CezaDetay extends StatelessWidget {
  final Ceza secilenCeza;
  const CezaDetay({required this.secilenCeza, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          secilenCeza.cezaAdi,
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Text(
          secilenCeza.cezaDetayi,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
