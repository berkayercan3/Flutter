import 'package:flutter/material.dart';

class StatefullLifeCycleLearn extends StatefulWidget {
  const StatefullLifeCycleLearn({super.key, required this.message});

  final String message;

  @override //iç durumu (state) yönetilmesini sağlayan sınıftır
  State<StatefullLifeCycleLearn> createState() =>
      _StatefullLifeCycleLearnState();
}

class _StatefullLifeCycleLearnState extends State<StatefullLifeCycleLearn> {
  String _message = '';
  late final bool _isOdd; //late ile bir değişkenin daha sonra başlatılacağını ve kullanmadan önce başlatılması
                          //gerektiğini ifade eder.Yani değişkenin ilk değeri tanımlandığınad verilmez,ancak daha
                          //sonra bir değer atanır.
                          //bool ya true olacak ya false issOdd da tek mi çift mi olunacağını tutar
                          //_isOdd un başlangıç değerini atayamzsın bu nedenle late kullanıldı

  @override
  void didChangeDependencies() { //statefulwidgetinin bağımlılığı değiştiğğinde çalışacak olan metottur
    super.didChangeDependencies();
    _computeName(); // bu bağımlılık değişikliğinde çalışacak olan metottur
print('c'); // bu didchange metodu çalıştığında ekrana c yazdırır
  }

  @override
  void didUpdateWidget(covariant StatefullLifeCycleLearn oldWidget) { //aynı şekilde bağımlılıkta bir değişiklik olduğunda çalışır
    super.didUpdateWidget(oldWidget);
    print('b');
  }
 // mesaj tekse yanına tek değilse çift yaz

  @override
  void initState() { // sayfa oluşturulduğunda çalışır , başlangıç durumu ayarlanır
    super.initState();
    _message = widget.message;
    _isOdd = widget.message.length.isOdd;
    _computeName();
    print('a');
  }

  void _computeName() {
    if (_isOdd) {
      _message += "Cift";
    }else{
      _message += "Tek";
    }
  }

  @override
  void dispose() { //widget sona erdiğinde çalışır ve temizlik işlemleri yapmak için kullanılır
    super.dispose();
    print('alo');
  }

  @override
  Widget build(BuildContext context) { //kullanıcı arayüzü oluşturulur
    return Scaffold(
      appBar: AppBar(
        title: Text(_message),
      ),
      body: _isOdd
          ? TextButton(onPressed: () {}, child: Text(_message))
          : ElevatedButton(onPressed: () {}, child: Text(_message)),
    );
  }
}
