import 'package:flutter/material.dart';

import '../model/sporcu.dart';

class DataHelper {
  static List<Sporcu> tumEklenenSporcular = [];

  static sporcuEkle(Sporcu sporcu) {
    tumEklenenSporcular.add(sporcu);
  }

  static String sikletHesapla() {
    for (var sporcu in tumEklenenSporcular) {
      String cinsiyet = sporcu.cinsiyet;
      int yas = sporcu.yas;
      int kilo = sporcu.kilo;

      if (cinsiyet == 'Kız' && kilo == 36) {
        if (yas > 6 && yas <= 12) {
          return '36 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '36 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return 'Gençler kategorisinde yarışamaz(min. kilo: 40)';
        } else if (yas > 17 && yas <= 21) {
          return 'Ümitler kategorisinde yarışamaz(min. kilo: 45)';
        } else {
          return 'Büyükler kategorisinde yarışamaz(min. kilo: 45)';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 36) {
        if (yas > 6 && yas <= 12) {
          return '36 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '36 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return 'Gençler kategorisinde yarışamaz(min. kilo: 45)';
        } else if (yas > 17 && yas <= 21) {
          return 'Ümitler kategorisinde yarışamaz(min. kilo: 55)';
        } else {
          return 'Büyükler kategorisinde yarışamaz(min. kilo: 55)';
        }
      } else if (cinsiyet == 'Kız' && kilo == 40) {
        if (yas > 6 && yas <= 12) {
          return '40 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '40 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '40 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return 'Ümitler kategorisinde yarışamaz(min. kilo: 45)';
        } else {
          return 'Büyükler kategorisinde yarışamaz(min. kilo: 45)';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 40) {
        if (yas > 6 && yas <= 12) {
          return '40 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '40 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return 'Gençler kategorisinde yarışamaz(min. kilo: 45)';
        } else if (yas > 17 && yas <= 21) {
          return 'Ümitler kategorisinde yarışamaz(min. kilo: 55)';
        } else {
          return 'Büyükler kategorisinde yarışamaz(min. kilo: 55)';
        }
      } else if (cinsiyet == 'Kız' && kilo == 45) {
        if (yas > 6 && yas <= 12) {
          return '45 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '45 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '45 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '45 Kilo Ümit Bayanlar \n45 Kilo Büyük Bayanlar';
        } else {
          return '45 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 45) {
        if (yas > 6 && yas <= 12) {
          return '45 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '45 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '45 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return 'Ümitler kategorisinde yarışamaz(min. kilo: 55)';
        } else {
          return 'Büyükler kategorisinde yarışamaz(min. kilo: 55)';
        }
      } else if (cinsiyet == 'Kız' && kilo == 50) {
        if (yas > 6 && yas <= 12) {
          return '50 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '50 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '50 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '50 Kilo Ümit Bayanlar \n50 Kilo Büyük Bayanlar';
        } else {
          return '50 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 50) {
        if (yas > 6 && yas <= 12) {
          return '50 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '50 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '50 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return 'Ümitler kategorisinde yarışamaz(min. kilo: 55)';
        } else {
          return 'Büyükler kategorisinde yarışamaz(min. kilo: 55)';
        }
      } else if (cinsiyet == 'Kız' && kilo == 55) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '55 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '55 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '55 Kilo Ümit Bayanlar \n55 Kilo Büyük Bayanlar';
        } else {
          return '55 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 55) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '55 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '55 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '55 Kilo Ümit Erkekler \n55 Kilo Büyük Erkekler';
        } else {
          return '55 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 59) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '59 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '59 Kilo Ümit Bayanlar \n59 Kilo Büyük Bayanlar';
        } else {
          return '59 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 59) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '59 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '59 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '59 Kilo Ümit Erkekler \n59 Kilo Büyük Erkekler';
        } else {
          return '59 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 63) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '63 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '63 Kilo Ümit Bayanlar \n63 Kilo Büyük Bayanlar';
        } else {
          return '63 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 63) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '+63 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '63 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '63 Kilo Ümit Erkekler \n63 Kilo Büyük Erkekler';
        } else {
          return '63 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 68) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '+68 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '68 Kilo Ümit Bayanlar \n68 Kilo Büyük Bayanlar';
        } else {
          return '68 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 68) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '+63 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '68 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '68 Kilo Ümit Erkekler \n68 Kilo Büyük Erkekler';
        } else {
          return '68 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 73) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '+68 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '+73 Kilo Ümit Bayanlar \n+73 Kilo Büyük Bayanlar';
        } else {
          return '+73 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 73) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '+63 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '73 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '73 Kilo Ümit Erkekler \n73 Kilo Büyük Erkekler';
        } else {
          return '73 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 80) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '+68 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '+73 Kilo Ümit Bayanlar \n+73 Kilo Büyük Bayanlar';
        } else {
          return '+73 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 80) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '+63 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '+80 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '80 Kilo Ümit Erkekler \n80 Kilo Büyük Erkekler';
        } else {
          return '80 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 87) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '+68 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '+73 Kilo Ümit Bayanlar \n+73 Kilo Büyük Bayanlar';
        } else {
          return '+73 Kilo Büyük Bayanlar';
        }
      } else if (cinsiyet == 'Erkek' && kilo == 87) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '+63 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '+80 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '87 Kilo Ümit Erkekler \n87 Kilo Büyük Erkekler';
        } else {
          return '87 Kilo Büyük Erkekler';
        }
      } else if (cinsiyet == 'Kız' && kilo == 87) {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Bayanlar';
        } else if (yas > 12 && yas <= 14) {
          return '+59 Kilo Yıldız Bayanlar';
        } else if (yas > 14 && yas <= 17) {
          return '+68 Kilo Genç Bayanlar';
        } else if (yas > 17 && yas <= 21) {
          return '+73 Kilo Ümit Bayanlar \n+73 Kilo Büyük Bayanlar';
        } else {
          return '+73 Kilo Büyük Bayanlar';
        }
      } else {
        if (yas > 6 && yas <= 12) {
          return '+55 Kilo Minik Erkekler';
        } else if (yas > 12 && yas <= 14) {
          return '+63 Kilo Yıldız Erkekler';
        } else if (yas > 14 && yas <= 17) {
          return '+80 Kilo Genç Erkekler';
        } else if (yas > 17 && yas <= 21) {
          return '+88 Kilo Ümit Erkekler \n+88 Kilo Büyük Erkekler';
        } else {
          return '+88 Kilo Büyük Erkekler';
        }
      }
    }
    return 'HATA!!!';
  }

  static List<String> _tumKiloAraliklari() {
    return [
      '-36',
      '37-40',
      '41-45',
      '46-50',
      '51-55',
      '56-59',
      '60-63',
      '64-68',
      '69-73',
      '74-80',
      '81-87',
      '+88'
    ];
  }

  static int _kiloAraliginiVer(String kilo) {
    switch (kilo) {
      case '-36':
        return 36;
      case '37-40':
        return 40;
      case '41-45':
        return 45;
      case '46-50':
        return 50;
      case '51-55':
        return 55;
      case '56-59':
        return 59;
      case '60-63':
        return 63;
      case '64-68':
        return 68;
      case '69-73':
        return 73;
      case '74-80':
        return 80;
      case '81-87':
        return 87;
      case '+88':
        return 88;
      default:
        return 1;
    }
  }

  static List<DropdownMenuItem<int>> tumKiloAraliklari() {
    return _tumKiloAraliklari()
        .map(
          (e) => DropdownMenuItem(
            child: Text(e),
            value: _kiloAraliginiVer(e),
          ),
        )
        .toList();
  }

  static List<int> _yasAraliginiVer() {
    return List.generate(19, (index) => index + 7).toList();
  }

  static List<DropdownMenuItem<int>> tumYaslar() {
    return _yasAraliginiVer()
        .map(
          (e) => DropdownMenuItem(
            child: Text(e.toString()),
            value: e.toInt(),
          ),
        )
        .toList();
  }

  static List<String> _tumCinsiyetleriVer() {
    return ['Erkek', 'Kız'];
  }

  static List<DropdownMenuItem<String>> tumCinsiyetler() {
    return _tumCinsiyetleriVer()
        .map(
          (e) => DropdownMenuItem(
            child: Text(e),
            value: e,
          ),
        )
        .toList();
  }
}
