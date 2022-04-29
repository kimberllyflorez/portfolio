import 'package:firebase_database/firebase_database.dart';

class FirebaseDataBaseService {
  static const String databaseKey = '/AppsProd';

  final FirebaseDatabase _database = FirebaseDatabase.instance;

  Future<Object?> readAllData() async {
    final ref = _database.ref();
    return _getData(ref);
  }

  Future<Object?> readKeyData(String refName) async {
    final dbUrl = '$databaseKey/$refName';
    final ref = _database.ref(dbUrl);
    return _getData(ref);
  }

  _getData(DatabaseReference ref) async {
    Object? dbData;
    await ref.once().then((DatabaseEvent snapshot) {
      dbData = snapshot.snapshot.value;
    });
    return dbData;
  }
}
