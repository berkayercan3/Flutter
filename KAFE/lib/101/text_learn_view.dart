import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Flutter'ın malzeme tasarım widget'larını içeren kütüphaneyi içe aktarıyoruz.

class TextLearnView extends StatelessWidget {
  //: "TextLearnView" adında bir sınıf tanımlıyoruz. Bu sınıf StatelessWidget sınıfından türetilmiş, yani durumu değişmeyen (stateless) bir widget olacak.

  //Sınıfın yapıcı yöntemi (constructor) tanımlanıyor.
  final String name =
      'Veli'; //Veli" adında bir metin dizisi (string) oluşturuluyor ve bu metin, "name" adında bir sınıf özelliğine atanıyor.

  final ProjectKeys keys = ProjectKeys();
  final String? userName;

  TextLearnView({super.key, this.userName});

  @override //Bu, üzerine yazdığınız bir metodun üstünü örttüğünüzü belirtir. Bu durumda, build metodunu üzerine yazıyoruz. build metodunu, Flutter tarafından verilen bir bağlam içindeki bir widget ağacını oluşturmak için kullanırız.
  Widget build(BuildContext context) {
    //Bu, build adında bir metodu tanımlar ve bu metot bir BuildContext alır. BuildContext, widget'ların ağaç içinde nasıl yerleştirileceği ve düzenleneceği hakkında bilgi sağlar.
    return Scaffold(
      //Bu, Scaffold adlı bir widget döndürür. Bir Scaffold, tipik olarak bir uygulamanın temel yapısını oluşturur. Başlıklar, gövde, alt çubuk gibi bileşenleri içerebilir.
      body: Center(
          //Scaffold'ın "body" özelliği, sayfanın ana içeriğini belirtir. Burada "Center" adında bir widget kullanılarak, içeriğin ortalanmasını sağlıyoruz.

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            CupertinoButton(child: const Text('button'), onPressed: () {}),
             Text(
            //Center" widget'ının içeriği olarak "Text" adında bir widget kullanıyoruz. Bu, belirli bir metni görüntülememizi sağlar.
            'Berkay $name ${name.length}',
            // Bu, görüntülenmek istenen metni belirtir. Metinde "Berkay", ardından name özelliği ve name.length ifadesi yer alır.
            maxLines: 2,
            //En fazla 2 satırı göstermek için maxLines özelliğini kullanıyoruz.
            overflow: TextOverflow.ellipsis,
            //  Metin içeriği en fazla 2 satıra sığmazsa, fazla metinleri "..." işaretiyle kırpma şeklinde göstermesini sağlar.
            textAlign: TextAlign.right,
            // Metin hizalamasını sağa ayarlar.
            style: const TextStyle(
                //  Metin stilini belirtir. TextStyle sınıfı, metin görüntüleme özelliklerini ayarlamak için kullanılır.
                fontSize: 35,
                wordSpacing: 2,
                //  Kelimeler arası boşluğu ayarlar.
                decoration: TextDecoration.underline,
                //Metnin altını çizer.
                fontStyle: FontStyle.italic,
                letterSpacing: 2,
                // Harfler arası boşluğu ayarlar.
                color: Colors.blue,
                fontWeight: FontWeight.w600 // Metin kalınlığını belirler.
                ),
          ),
          Text(
            'Berkay $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: ProjectStyles
                .welcomeStyle, // clas sayesinde ana tasarım temelini uzatmadan projeye çekebildik
          ),
          Text(
            'Berkay $name ${name.length}',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          Text(userName ?? ''),
          Text(keys.welcome),
        ],
      )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      fontSize: 35,
      wordSpacing: 2,
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      letterSpacing: 2,
      color: Colors.blue,
      fontWeight: FontWeight.w600);
}

class ProjectColors {
  static Color welcomeColor = Colors.red;
}

class ProjectKeys {
  final String welcome = 'Merhaba';
}
