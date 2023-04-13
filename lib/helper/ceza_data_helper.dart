import 'package:siklet_hesapla/model/ceza.dart';

class DataHelper {
  DataHelper() {}

  static List<Ceza> tumCezalar = [];

  static const List<String> Ceza_Adlari = [
    "Sınır çizgisini geçmek",
    "Yere düşme",
    "Maçı oyalama veya maçtan kaçınmak",
    "Düşen rakibe saldırmak",
    "Ayak altı veya yanı ile yapılan vuruşlar",
    "Bir atağın gelişimini veya geçerli bir puanı engellemek için dizini çekmek",
    "Belden aşağıya saldırmak",
    "'Kal-yeo' komutundan sonra rakibe saldırmak",
    "Rakibin başına elle vurmak",
    "Dizle saldırmak",
    "Rakibi elle tutmak veya itmek",
    "Müsabık ve antrenörün uygunsuz davranışı",
  ];

  static const List<String> Ceza_Detayi = [
    "  Yarışmacının her iki veya bir ayağı da sınır çizgisini geçtiğinde 'Gam-jeom' ilan edilir. Eğer ayak parmağının kök kısmı sınır çizgisinin dışına  dokunuyorsa  ve yarışmacının ayak tabanı sınır çizgisinin üzerinde ise, dışarı çıkmış sayılır. Ayağın izdüşümü sınır çizgisi dışında olması durumunda ayağın dışarıya basması esas alınır.\n\n"
        " Eğer bir müsabık rakip müsabık tarafından yasak bir hareket sonucunda sınır çizgisini geçerse 'Gam-jeom' verilmemelidir.\n\n"
        " Eğer chung(mavi köşe) hong(kırmızı köşe)’u sınır çizgisinin dışına atar ve dışarıda iken teknik uygularsa , Gam-jeom ile cezalandırılır ve aldığı puanlar geçersiz sayılır.\n\n",


    "  Düşen bir rakibin tanımı: sporcunun ayak tabanları dışında herhangi bir vücut kısmının yere değmesine düşme denir. Yere düşme için 'Gam-jeom' ilan edilir.\n\n"
        " Tüm teknik çarpışmalarda  iki sporcunun düşmesi durumunda “Gam-jeom” ile cezalandırılmaz.\n\n"
        " Tekniksiz vücutla çarpışmalarda, kaval kemiklerinin bir birleriyle çarpışması halinde  iki sporcunun düşmesi durumunda müsabaka devam eder. Gam-jeom cezası verilmez.\n\n"
        " Dengesi bozulup kendiliğinden düşmesi durumunda 'Gam-jeom' ile cezalandırılır.\n\n",


    "  Bu eylem hiçbir saldırı niyeti olmadan duraksamayı içerir. Sürekli olarak hareketsiz bir stil sergileyen müsabıka ceza verilmelidir. Eğer her iki müsabık beş (5) saniyeden sonra pasif kalırsa orta hakem 'Dövüş' komutunu bildirmelidir. Verilen komuttan beş (5) saniye sonra, orijinal pozisyonundan geriye doğru hareket ederek müsabıka “Gam-jeom” cezası verilir. Verilen komuttan beş (5) saniye sonra her iki müsabıkta da aktivite yoksa ikisine de 'Gam-jeom' cezası verilmelidir.\n\n"
        " Rakibin atağından kaçınmak için sırtı dönmek, fair-play ruhunun eksikliğini ifade ettiği ve ciddi yaralanmalara sebep olabileceği için cezalandırılmalıdır. Aynı ceza ayrıca bel seviyesinin altına eğilerek veya çömelerek rakibin atağını savuşturma için de verilmelidir.\n\n"
        " 'Sakatlanmış numarası yapmak' sakatlığı abartma veya rakibin hareketlerini bir ihlal olarak göstermek maksadıyla darbeye maruz kalmayan bir  vücut kısmında acı belirtmek ve ayrıca zaman geçirmek amacıyla acıyı abartmak demektir. Bu durumda hakem 'Gam-jeom' cezası vermelidir.\n\n",


    "  Bu hareket rakibin yüksek yaralanma olasılığı nedeniyle çok tehlikelidir. Tehlike şundan kaynaklanır:\n\n"
        " Düşen rakip derhal savunmasız bir durumdadır.\n\n"
        " Düşmüş bir müsabıka vuran herhangi bir tekniğin etkisi müsabıkın pozisyonu nedeniyle daha büyük olacaktır. Düşmüş bir rakibe karşı bu tür agresif  hareketler Taekwondo yarışmasına uygun olmadığı gibi Taekwondo ruhuyla da uyumlu değildir. Bu bağlamda, düşen rakibe kasıtlı vurma için cezalar darbenin etki derecesine bakılmaksızın verilmesi gerekir.\n\n"
        " Düşen rakibe saldırıda temas olsun veya olmasın (kötü niyetli ise) ceza verilmelidir.\n\n"
        " Eğer sporcu rakibi yere değmeden puan alırsa, puan kalır düşen sporcuya Gam-Jeom verilir.\n\n"
        " Sporcu rakibi yere temas ettikten sonra puan alırsa, puanlar silinir ve düşen rakibe saldırmadan dolayı rakibe de yere düşmeden dolayı birer Gam-Jeom verilir.\n\n",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
    "  ",
  ];
}
