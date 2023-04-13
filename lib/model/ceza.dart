class Ceza {
  final String _cezaAdi;
  final String _cezaDetayi;

  get cezaAdi => _cezaAdi;
  get cezaDetayi => _cezaDetayi;

  Ceza(this._cezaAdi, this._cezaDetayi);

  @override
  String toString() {
    return '$_cezaAdi $_cezaDetayi';
  }
}
