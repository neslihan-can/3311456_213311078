class Teknik {
  final String _teknikAdi;
  final String _teknikDetayi;
  final String _teknikFoto;

  Teknik(this._teknikAdi, this._teknikDetayi, this._teknikFoto);

  get teknikAdi => this._teknikAdi;
  get teknikDetayi => this._teknikDetayi;
  get teknikFoto => this._teknikFoto;


  @override
  String toString() {
    return '$_teknikAdi $_teknikDetayi $_teknikFoto';
  }

}
