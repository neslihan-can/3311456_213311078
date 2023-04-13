import 'package:siklet_hesapla/model/teknik.dart';

class DataHelper {
  DataHelper() {}

  static List<Teknik> tumTeknikler = [];

  static const List<String> Teknik_Adlari = [
    "Palding",
    "DollyoChagi",
    "ApChagi",
    "YeopChagi",
    "DwiChagi",
    "BandeDollyo",
  ];

  static const List<String> Teknik_Ozellikleri = [
    "\t  Palding, orta seviyeye uygulanan bir tekniktir. Bu tekniğin uygulanması için ayağın üst kısmı kullanılır. Tekniğin amacı, kalçanın ileri doğru itilmesi ve dizin çekilmesiyle birlikte, en kısa mesafeden rakibin gövde bölgesine yönelik bir vuruş yapmaktır.\n\n"
        "\t Vuruş yeri ayağın üst kısmıdır ve uygulama sırasında diğer bacak hafifçe dizden kırılır. Baş hafifçe öne eğilirken, vücut geriye yatar ve dengenin (ağırlık merkezinin) öne doğru kaydırılması hedeflenir. Kollar, yumruklar sıkı bir şekilde öne uzatılır.\n\n"
        "\t Teknik uygulanırken, diz yukarı kalkmadan hızla ileri kayarak, ayak aşağıdan yukarı doğru hedefi bulur. Vuruş, genellikle rakibin dirsek altı yan boşlukları ve alt karın seviyesi gibi orta seviyede (momtong) yapılır. Teknik genellikle arkadaki ayakla uygulanır. Vuruş sırasında vücut, belden aksi yöne doğru biraz çevrilir ve vuruş gücü artırılırken, denge sağlanır.\n\n"
        "\t Baş, hedefe tamamen dönük konumda olmalıdır. Teknik, bütün vücuttan, belden ve kalçadan çıkartılarak vuruş hızı ve kuvveti artırılır. Teknik, rakibin tam karşısında vücut geriye yatırılarak veya yana biraz kayarak uygulanır. Mesafe kontrolü, step adımları ile ayarlanır.\n\n"
        "\t Vuruş için zamanlama, beş şekilde yapılabilir:\n\n"
        "\t1-Rakibin atağını beklemeden direkt vuruş\n\n"
        "\t2-Rakibin tekniği yarıda iken vuruş\n\n"
        "\t3-Rakibin tekniği vuruş anında iken vuruş\n\n"
        "\t4-Rakibin tekniği başlangıç anına geldiği zaman vuruş\n\n"
        "\t5-Rakip tekniğini geri çekerken vuruş\n\n",
    "\t  Dollyo-chagi, Taekwondo müsabakalarında sıklıkla kullanılan bir tekniğe sahiptir. Bu tekniğin vuruş bölgesi genellikle yüksek seviyededir ve ayağın üst kısmıyla yapılır. Vuruş için kalça ileri doğru itilir ve diz çekilerek ayak, en kısa mesafeden rakibin kafa bölgesine doğru dairesel bir hareketle vurulur.\n\n"
        "\t Bu tekniğin uygulanması için ayak dizden kırılarak öne doğru dairesel bir tekmeye verilir. Diğer bacak hafifçe dizden kırılır ve baş hafifçe öne eğilirken kollar da yumruklar sıkı bir şekilde öne doğru uzatılır. Vuruş yeri ayağın ap-chuck (pençe) kısmıdır. Teknik uygulanırken önce diz kalkar ve ardından hızlıca ayak açılır. Bu iki hareket birbirini takip ettiği için tek bir hareket gibi görünmelidir.\n\n"
        "\t Dollyo-chagi genellikle yüksek seviyede yapılır, ancak vuruş yapılacak yere göre değişebilir. Teknik öndeki veya arkadaki ayakla yapılabilir. Vuruş sırasında vücut, belden aksi yöne doğru çevrilerek vuruş gücü arttırılır ve denge sağlanır. Baş tamamen hedefe dönük konumda olmalıdır.\n\n"
        "\t Diğer tekniklerden farklı olarak, peşpeşe birden fazla vuruş yapılabilir ve ap-chagi veya yeop-chagi vuruşu yapan ayak yerine gitmeden dollyo-chagi vuruşu da yapılabilir. Ayrıca vuruşlar sırasında ayağın üst (palding) kısmı da kullanılabilir.\n\n",
    "\t  ApChagi, Taekwondo'nun temel tekniklerinden biridir ve müsabakalarda sıkça kullanılan bir tekniğe sahiptir. 'Ap' kelimesi 'ön' veya 'ön taraf' anlamına gelir, 'chagi' ise 'tekme' anlamına gelir.\n\n"
        "\t ApChagi, ayağın ayak bileği veya ayak bileği üzerindeki topuk kısmı kullanılarak yapılan bir tekmedir. Teknik, düz bir çizgi üzerinde ve hızlı bir şekilde ileriye doğru hareket ederken rakibe yapılan bir tekmedir. Ayak, hızlı ve kontrollü bir şekilde düşürülür ve ayağın ön kısmı hızla rakibin hedef bölgesine doğru hareket ettirilir. Teknik genellikle karşı tarafın göğüs veya karın bölgesine yapılır.\n\n"
        "\t ApChagi, diğer tekniklere göre daha hızlı ve daha doğru bir şekilde yapılabilir. Vuruşu yapmak için ayağın geriye doğru çekilmesi gerekmez, bu nedenle teknik hızlı bir şekilde ardışık olarak uygulanabilir. Ayrıca, ApChagi'nin uygulanması sırasında diğer bacak da hafifçe dizden kırılır, bu da dengeyi sağlar.\n\n"
        "\t Müsabakalarda ApChagi, genellikle rakibin defansını açmak ve skor yapmak için kullanılır. Ayrıca, rakibin savunmasını geçmek için diğer tekniklerle birlikte de kullanılabilir.\n\n",
    "\t  Yeop Chagi, yani yan tekme vuruş tekniği, taekwondo müsabakalarında oldukça yaygın olarak kullanılan bir tekniktir. Bu teknikte, vuruş bölgesi rakibin gövdesinin yan kısmıdır. Vuruşun başlangıcı, ayak tabanının 90 derecelik bir açıyla yana doğru döndürülmesiyle gerçekleşir. Bu dönüş hareketi, bel ve gövdeden kazanılan momentum ile desteklenir.\n\n"
        "\t Yeop Chagi vuruşunda, ayağın dış kenarı ve topuktan destek alınarak rakibin göğsüne hamle yapılır. Bu teknik, rakibi hızlı ve etkili bir şekilde etkisiz hale getirmek için kullanılabilir. Aynı zamanda, bu teknikle rakibin denge noktalarına yönelik hassas bir vuruş gerçekleştirilerek rakibin savunmasının kırılması hedeflenir.\n\n"
        "\t Yeop Chagi tekniği, taekwondo sporcularının kuvvet, hız ve denge becerilerini geliştirmelerine de yardımcı olabilir. Bu teknik, aynı zamanda taekwondo müsabakalarında önemli bir puanlama aracı olarak da kullanılır.\n\n",
    "\t  Dwi Chagi tekniği, rakibe karşı orta seviye bir vuruş yapmak için kullanılır. Bu teknikte, ayak topuğu kullanılarak geriye doğru bir hareketle rakibin gövde bölgesine vuruş yapılır. DwiChagi tekniği, aynı zamanda geriye dönük tekme olarak da bilinir.\n\n"
        "\t Bu tekniğin temelinde, rakibe yaklaşıp vuruş yaparken ani bir geri çekilme ve ardından hızlı bir ileri atılım yatar. Ayak topuğu kullanılarak geriye doğru bir hareket yapıldıktan sonra, rakibe doğru bir atak için ayak tabanı kullanılır. Vuruş hızı ve gücü, geriye çekilme ve ardından hızlı bir ileri atılım ile kazanılır.\n\n"
        "\t Diğer taekwondo tekniklerinden farklı olarak dwit chagi tekniği dönerli tekmelerden birisidir.  Bu tekmeler rotasyonlu bir şekilde atılırsa extra olarak 2 puan kazandırır.\n\n"
        "\t Dwi Chagi tekniği, Taekwondo'nun dinamik ve güçlü bir spor dalı olmasına katkıda bulunur. Tekniğin uygulanması sırasında, sporcu dengesini korumalı ve rakibin tepkilerini takip etmeli, doğru zamanda uygun şekilde vuruş yaparak maçı kazanmak için avantaj sağlamalıdır.\n\n",
    "\t  Bande Dollyo tekniği, taekwondo'da kullanılan yarım dairesel tekme tekniklerinden biridir. Bu teknikte, ayak dizden kırılarak yana doğru (180) bir açıyla hareket ettirilir.\n\n"
        "\t Teknik için diğer bacak hafifçe dizden kırılırken, baş hafifçe öne eğilir ve kollar yumruklar sıkılarak biraz öne uzanır. Vuruş yeri olarak topuk, taban veya ayak pençesi kullanılabilir.\n\n"
        "\t Bande Dollyo tekniği, dizin kalkışı ve dizden yarım dairesel açılış şeklinde iki hareketin birleşiminden oluşur ve bu iki hareket çok hızlı yapılarak bir hareketmiş gibi görünür. Vuruş momtong veya olgul seviyesinde yapılabilir ve öndeki veya gerideki ayak kullanılabilir.\n\n"
        "\t Bacağın yarım dairesel dönüşüne bel dönüşü eklenerek vuruş gücü arttırılabilir. Hedef vuruş yapan ayağın tarafındadır ve baş vuruş yapan tarafa çevrilir. BandeDollyo tekniği, doğru bir şekilde uygulandığında oldukça etkili bir tekme olabilir. Savunma ve saldırı amaçları için kullanılabilir.\n\n",
  ];
}
