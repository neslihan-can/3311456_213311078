import "package:flutter/material.dart";
import "package:siklet_hesapla/constands/app_constands.dart";

Widget drawerListTile(
        BuildContext context, IconData icon, String title, String routeName) =>
    ListTile(
      leading: Icon(
        icon,
        color: Sabitler.anaRenk,
      ),
      title: Text(title),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () => Navigator.pushNamed(context, routeName),
    );
