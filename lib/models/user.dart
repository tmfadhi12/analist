part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String kelas;
  final String jurusan;

  User(this.id, this.email, {this.name, this.kelas, this.jurusan});

  @override
  List<Object> get props => [id, email, name, kelas, jurusan];
  String toString() {
    return "[$id] - $name, $email";
  }

  updateProfile(UserUpdateInfo updateInfo) {}
}
