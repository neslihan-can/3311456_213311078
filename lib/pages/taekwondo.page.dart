import 'package:flutter/material.dart';
import 'package:siklet_hesapla/helper/taekwondo_data_helper.dart';

class Taekwondo extends StatelessWidget {
  const Taekwondo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            title: Text(
              'Taekwondo Nedir?',
              style: TextStyle(fontSize: 24),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/taekwondo.jpg',
                fit: BoxFit.contain,
              ),
            ),
          ),
          SliverFillRemaining(
              child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                DataHelper.taekwondoNedir,
                style: TextStyle(fontSize: 16),
              ),
            ),
          )),
        ],
      ),
    );
  }
}
