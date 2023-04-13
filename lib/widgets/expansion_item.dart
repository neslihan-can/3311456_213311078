import "package:flutter/material.dart";
import "package:siklet_hesapla/constands/app_constands.dart";
import "package:siklet_hesapla/widgets/show_alert_dialog.dart";

Widget expansionListTile(
        BuildContext context, IconData icon, String title, String content) =>
    ListTile(
      leading: Icon(
        icon,
        color: Sabitler.anaRenk,
      ),
      title: Text(title),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        showAlertDialog(context, title, content);
      },
    );
