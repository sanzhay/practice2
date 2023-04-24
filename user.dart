class User {
  int? _id;
  String? _name;

  User({int id = 0, String name = 'anonymous'})
      : assert(id >= 0),
        assert(name.isNotEmpty),
        _id = id,
        _name = name;
}
