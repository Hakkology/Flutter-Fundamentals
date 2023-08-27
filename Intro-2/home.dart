import 'user.dart';

void main() {
  User user1 = User(UserRole.Admin, "Ece", DateTime.now());
  User user2 = User(UserRole.User, "Hakan", DateTime.now());
  User user3 = User(UserRole.Client, "Mustafa", DateTime.now());

  switch (user1.role) {
    case UserRole.Admin:
      print("You have authorization for all as an Admin.");
      break;
    case UserRole.User:
      print("You have access to User interface.");
      break;
    case UserRole.Client:
      print("Client interface at your service.");
      break;
    default:
  }
}
