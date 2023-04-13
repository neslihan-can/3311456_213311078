class Sporcu {
  final String ad;
  final int kilo;
  final int yas;
  final String cinsiyet;

  Sporcu(
      {required this.ad,
      required this.kilo,
      required this.yas,
      required this.cinsiyet}); 

  @override
  String toString() {
    return '$ad $kilo $yas $cinsiyet';
  }
}

 
