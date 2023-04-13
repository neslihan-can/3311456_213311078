import 'package:flutter/material.dart';
import 'package:siklet_hesapla/constands/app_constands.dart';
import 'package:siklet_hesapla/helper/siklet_hesapla_data_helper.dart';
import 'package:siklet_hesapla/model/sporcu.dart';
import 'package:siklet_hesapla/widgets/drawer_menu.dart';
import 'package:siklet_hesapla/widgets/sporcu_listesi.dart';

class SikletHesaplaPage extends StatefulWidget {
  SikletHesaplaPage({Key? key}) : super(key: key);

  @override
  State<SikletHesaplaPage> createState() => _SikletHesaplaPageState();
}

class _SikletHesaplaPageState extends State<SikletHesaplaPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  int secilenKiloDegeri = 45;
  int secilenYasDegeri = 8;
  String secilenCinsiyet = 'Kız';
  String girilenSporcu = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        elevation: 0,
        title: Center(
          child: Text('Siklet Hesaplama', style: Sabitler.baslikStyle),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              Expanded(
                flex: 5,
                child: _buildForm(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: IconButton(
                    onPressed: _sporcuEkleveSikletHesapla,
                    icon: Icon(Icons.arrow_drop_down_circle),
                    color: Sabitler.anaRenk,
                    iconSize: 40,
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: sporcuListesi(),
          ),
        ],
      ),
    );
  }

  _buildForm() {
    return Form(
      key: formKey,
      child: Column(
        children: [
          Padding(
            padding: Sabitler.yatayPadding5,
            child: _buildTextFormField(),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: Sabitler.yatayPadding5,
                child: _buildKilo(),
              ),
              Padding(
                padding: Sabitler.yatayPadding5,
                child: _buildYas(),
              ),
              Padding(
                padding: Sabitler.yatayPadding5,
                child: _buildCinsiyet(),
              ),
            ],
          )
        ],
      ),
    );
  }

  _buildTextFormField() {
    return TextFormField(
      onSaved: (deger) {
        setState(() {
          girilenSporcu = deger!;
        });
      },
      validator: (s) {
        if (s!.length <= 0) {
          return 'İsim Soyisim Girin';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
          hintText: 'İsim Soyisim',
          border: OutlineInputBorder(borderRadius: Sabitler.borderRadius),
          filled:
              true, // Arka plan rengini düzenleyebilmek için true yapıyoruz.
          fillColor: Sabitler.anaRenk.shade100.withOpacity(0.5)),
    );
  }

  _buildKilo() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<int>(
        value: secilenKiloDegeri,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        onChanged: (deger) {
          setState(() {
            secilenKiloDegeri = deger!;
            print(deger);
          });
        },
        items: DataHelper.tumKiloAraliklari(),
      ),
    );
  }

  _buildYas() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<int>(
        value: secilenYasDegeri,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        hint: Text('Yaş'),
        onChanged: (deger) {
          setState(() {
            secilenYasDegeri = deger!;
            print(deger);
          });
        },
        items: DataHelper.tumYaslar(),
      ),
    );
  }

  _buildCinsiyet() {
    return Container(
      alignment: Alignment.center,
      padding: Sabitler.dropDownPadding,
      decoration: BoxDecoration(
        color: Sabitler.anaRenk.shade100.withOpacity(0.3),
        borderRadius: Sabitler.borderRadius,
      ),
      child: DropdownButton<String>(
        value: secilenCinsiyet,
        elevation: 16,
        iconEnabledColor: Sabitler.anaRenk.shade200,
        hint: Text('Cinsiyet'),
        onChanged: (deger) {
          setState(() {
            secilenCinsiyet = deger!;
            print(deger);
          });
        },
        items: DataHelper.tumCinsiyetler(),
      ),
    );
  }

  void _sporcuEkleveSikletHesapla() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var EklenecekSporcu = Sporcu(
          ad: girilenSporcu,
          kilo: secilenKiloDegeri,
          yas: secilenYasDegeri,
          cinsiyet: secilenCinsiyet);
      DataHelper.sporcuEkle(EklenecekSporcu);
    }
  }
}
