import "package:flutter/material.dart";
import "package:siklet_hesapla/constands/app_constands.dart";
import 'package:siklet_hesapla/widgets/expansion_item.dart';

Widget expansionTile(BuildContext context, IconData icon, String title) =>
    ExpansionTile(
      leading: Icon(
        icon,
        color: Sabitler.anaRenk,
      ),
      title: Text(title),
      trailing: Icon(Icons.keyboard_arrow_down),
      children: [
        expansionListTile(context, Icons.star_border_purple500_rounded,
            'Bir (1) puan', "Gövde koruyucusuna geçerli bir yumruk vuruşu"),
        expansionListTile(context, Icons.star_border_purple500_sharp,
            "İki (2) puan", "Gövde koruyucusuna geçerli bir ayak vuruşu"),
        expansionListTile(context, Icons.star_border_purple500_outlined,
            "Üç (3) puan", "Başa geçerli bir tekme vuruşu"),
        expansionListTile(context, Icons.star_border_purple500, "Dört (4) puan",
            "Gövde koruyucusuna rotasyonlu bir dönerek tekme vuruşu"),
        expansionListTile(context, Icons.star, "Beş (5) puan",
            "Başa rotasyonlu bir dönerek tekme vuruşu"),
        expansionListTile(context, Icons.star_half_outlined,
            "Bir (1) ceza puanı", "Rakibe uygulanan her bir Gam-jeom cezası"),
      ],
    );
