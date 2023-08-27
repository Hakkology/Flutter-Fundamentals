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

  print(GetUserRoleFunction(user1.role));
  //print(user1.role.GetUserRole());
  String word = "You may be admin but you shall never take me alive.";
  print(word.upperCaseFirstWord());

  print(GetUserRoleFunction(user3.role));

  word.Translation();
}
