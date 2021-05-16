part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'kelas': user.kelas,
      'jurusan': user.jurusan,
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User(
      id,
      snapshot.data['email'],
      name: snapshot.data['name'],
      kelas: snapshot.data['kelas'],
      jurusan: snapshot.data['jurusan'],
    );
  }
}
