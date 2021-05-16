part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser {
  User convertToUser({
    String name = "",
    String kelas = "0",
    String jurusan = "",
  }) =>
      User(this.uid, this.email, name: name, kelas: kelas, jurusan: jurusan);

  Future<User> fromFirestore() async => await UserServices.getUser(this.uid);
}
