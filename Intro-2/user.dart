enum UserRole { Admin, User, Client }

class User {
  final UserRole role;
  final String name;
  final DateTime birthDate;

  User(this.role, this.name, this.birthDate) {}
}
