import 'user.dart';
import 'string.dart';

void main() {
  User user1 = User(UserRole.Admin, "Ece", DateTime.now());
  User user2 = User(UserRole.User, "Hakan", DateTime.now());
  User user3 = User(UserRole.Client, "Mustafa", DateTime.now());

  // switch (user1.role) {
  //   case UserRole.Admin:
  //     print("You have authorization for all as an Admin.");
  //     break;
  //   case UserRole.User:
  //     print("You have access to User interface.");
  //     break;
  //   case UserRole.Client:
  //     print("Client interface at your service.");
  //     break;
  //   default:
  //     print("You have failed in life.");
  // }

  GetUserRoleFunction(user1.role);
  user1.role.GetUserRole();

  String word = "hello";
  print(word.upperCaseFirstWord());
  print(word);

  word.Translation();
}
