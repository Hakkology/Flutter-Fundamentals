enum UserRole { Admin, User, Client }

class User {
  UserRole role;
  final String name;
  final DateTime birthDate;

  User(this.role, this.name, this.birthDate) {}
}

extension UserRoleExtension on UserRole {
  String GetUserRole() {
    switch (this) {
      case UserRole.Admin:
        return "You have authorization for all as an Admin.";
      case UserRole.User:
        return "You have access to User interface.";
      case UserRole.Client:
        return "Client interface at your service.";
      default:
        return "You have failed in life.";
    }
  }
}

GetUserRoleFunction(UserRole role) {
  switch (role) {
    case UserRole.Admin:
      return ("You have authorization for all as an Admin.");
    case UserRole.User:
      return ("You have access to User interface.");
    case UserRole.Client:
      return ("Client interface at your service.");
    default:
      return ("You have failed in life.");
  }
}
