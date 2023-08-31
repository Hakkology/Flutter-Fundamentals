class User {
  String? id;
  String? firstname;
  String? lastname;
  String? username;
  String? birthdate;
  String? email;
  String? country;

  User(
      {this.id,
      this.firstname,
      this.lastname,
      this.username,
      this.birthdate,
      this.email,
      this.country});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    username = json['username'];
    birthdate = json['birthdate'];
    email = json['email'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['firstname'] = firstname;
    data['lastname'] = lastname;
    data['username'] = username;
    data['birthdate'] = birthdate;
    data['email'] = email;
    data['country'] = country;
    return data;
  }
}
