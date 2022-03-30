/* 
                         MVVM Mimarisi 

  View -> Page,Screens, Sayfa
  View Model -> İş mantığı (Business Logic)
  Model 




Repository -> Ara Katmanımız. Uı ile Backend(Api,Data,Local Data,internet tabanlı data vs)


Factory

Constructor'lar oluşturulmasa bile default olarak ram'e yüklenirler.
Hatta değişkene atayıp kullanmasakta arkaplanda çalışır.

/////////////Mobx Kurulum/////////////

/// Amacı: StatefullWidget'tan kurtulmak ve setState'den kurtulmak
/// view katmanındaki herhangi bir değişkeni view'da değilde view-model'a taşımak
    Herhangi bir state management kullanılabilir.

  mobx: ^2.0.6+1
  flutter_mobx: ^2.0.4
  mobx_codegen: ^2.0.5+2

  dev_dependis:
  build_runner:

  vs code -> extension flutter_mobx

 !!!!Mobx'in diğer state manangement yöntemlerinden bir farkı var. Yanlızca belirlediği sayfada değişiklik yapar.


  @override -> Tekrardan yazma



/////////////Getter Setter
Değişken türü + get + Değişken adı => karşılığı;
 int get rastgele => 1;

 set + Değişken adı(int value) => rastgele = value;
 set rastgele(int value) => rastgele = value;


class Deneme {
  int get rastgele => 1;

  int degisken2 = 1;

  set rastgele(int value) => rastgele = value;

  yeniMethod() {
    rastgele = 2;
  }
}


/////////////////////////Part-Part of/////////////////////////

   iki dosya arasında yanlızca kendileri konuşabilirler.
  Ayrıca import görüntüsünden de kurtulur.




*/

