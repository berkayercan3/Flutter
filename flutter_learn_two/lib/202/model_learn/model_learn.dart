class User {
  final String name;
  final int age;

  // Constructor
  User({required this.name, required this.age});
}

// V1: Boş sınıf, tüm alanlar nullable
class PostModelV1 {
  int? userId;
  int? id;
  String? title;
  String? body;
}

// V2: Constructor ile değer atama
class PostModelV2 {
  int userId;
  int id;
  String title;
  String body;

  PostModelV2(this.userId, this.id, this.title, this.body);
}

// V3: Final değişkenler
class PostModelV3 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModelV3(this.userId, this.id, this.title, this.body);
}

// V4: Final ve named parameters
class PostModelV4 {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostModelV4({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
}

// V5: Private alanlar + getter
class PostModelV5 {
  final int _userId;
  final int _id;
  final String _title;
  final String _body;

  int get userId => _userId;
  int get id => _id;
  String get title => _title;
  String get body => _body;

  PostModelV5({
    required int userId,
    required int id,
    required String title,
    required String body,
  })  : _userId = userId,
        _id = id,
        _title = title,
        _body = body;
}

// V6: late kullanımı, değerler constructor gövdesinde atanıyor
class PostModelV6 {
  late final int userId;
  late final int id;
  late final String title;
  late final String body;

  PostModelV6({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) {
    this.userId = userId;
    this.id = id;
    this.title = title;
    this.body = body;
  }
}

// V7: Varsayılan değerler ve önerilen initializing formal kullanımı
class PostModelV7 {
  late final int userId;
  late final int id;
  late final String title;
  late final String body;

  PostModelV7({
    this.userId = 0,
    this.id = 0,
    this.title = '',
    this.body = '',
  });
}

// V8: copyWith ve Gelişmiş Model
class PostModelV8 {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  PostModelV8({this.userId, this.id, this.title, this.body});

  PostModelV8 copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return PostModelV8(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  void updateBody(String? newBody) {
    // Bu metod setState dışından çağrılırsa güncellenmez, örnek olarak dursun
    print("Yeni body: $newBody");
  }
}
