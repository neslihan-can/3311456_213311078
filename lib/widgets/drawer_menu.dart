import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import 'package:siklet_hesapla/widgets/drawer_item.dart';
import 'package:siklet_hesapla/widgets/expansion_tile.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'TAEKWONDO',
                    style: Sabitler.baslikStyle,
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.red.shade400,
            ),
          ),
          drawerListTile(
              context, Icons.sports_martial_arts, 'Taekwondo Nedir?', '/Taekwondo Nedir?'),
          drawerListTile(
              context, FontAwesomeIcons.shieldAlt, 'Teknikler', '/Teknikler'),
          drawerListTile(context, FontAwesomeIcons.trophy, 'Gam-Jeom Cezaları',
              '/Gam-Jeom Cezaları'),
          expansionTile(context, FontAwesomeIcons.medal, 'Puanlama Sistemi'),
        ],
      ),
    );
  }
}
