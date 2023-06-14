class User {
  late final String id;
  late final String username;
  late bool isActive;
  late String? email;
  late String? firstName;

  User(this.id, this.username, this.isActive, this.firstName, this.email);

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    username = json['username'];
    isActive = json['is_active'];
    email = json['email'];
    firstName = json['first_name'];
  }
}
