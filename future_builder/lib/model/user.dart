class User {
  late final String username;
  late final String email;
  late final String urlAvatar;

  User(this.username, this.email, this.urlAvatar);

//Create object from JSON
  static User fromJson(json) =>
      User(json['username'], json['email'], json['urlAvatar']);
}
