import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import 'package:siklet_hesapla/helper/siklet_hesapla_data_helper.dart';
import '../model/sporcu.dart';

class sporcuListesi extends StatefulWidget {
  const sporcuListesi({super.key});

  @override
  State<sporcuListesi> createState() => _sporcuListesiState();
}

class _sporcuListesiState extends State<sporcuListesi> {
  @override
  Widget build(BuildContext context) {
    List<Sporcu> tumSporcular = DataHelper.tumEklenenSporcular;
    String siklet = DataHelper.sikletHesapla();

    return ListView.builder(
        itemCount: tumSporcular.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: UniqueKey(),    //Her bir elemana farklı keyler atıyor.
            direction: DismissDirection.startToEnd,
            onDismissed: (a) {
              DataHelper.tumEklenenSporcular.removeAt(index);
              setState(() {
                
              });
            },
            child: Card(
              child: ListTile(
                title: Text(tumSporcular[index].ad),
                leading: CircleAvatar(
                  backgroundColor: Sabitler.anaRenk,
                  child: Text((tumSporcular[index].kilo).toString()),
                ),
                subtitle: Text(siklet),
              ),
            ),
          );
        });
  }
}
