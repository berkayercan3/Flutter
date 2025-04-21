// ignore_for_file: unused_field

//MODEL ÇEŞİTLERİ

class PostModel0 {
  // nullable
  int? userId;
  int? id;
  String? title;
  String? body;
}

class PostModel1 {
  int userId;
  int id;
  String title;
  String body;

  PostModel1(
      this.userId, this.id, this.title, this.body); //constructor işlemi yaptık
  // bu sayede class başlatıldığında değerlerin atanmasının sağlanacağını belirttik
}

class PostModel2 {
  // final sayesinde sadece onstructor başlatıldığında değer ataması olacak başka türlü olmaz
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel2(this.userId, this.id, this.title, this.body);
}

class PostModel3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModel3(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});
}

class PostModel4 {
  // _ ile private olması gerektiğini gösterdik
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  PostModel4({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel5 {
  // 4 ten farkı değerleri sonradan almasıdır
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel6 {
  // değer olarak 0 ile başlatırsak required kullanmak zorunda olmayız.
  late final int _userId;
  late final int _id;
  late final String _title;
  late final String _body;

  PostModel6({
    int userId = 0,
    int id = 0,
    String title = '',
    String body = '',
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

class PostModel7 {
  // en çok kullanımı önerilen,internetten (servisten) datalar gelecekse
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModel7({this.userId, this.id, this.title, this.body});
}
