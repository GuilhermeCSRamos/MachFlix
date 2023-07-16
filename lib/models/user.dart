abstract class User {
    String name;
    String email;
    String password;

    User({
        required this.name,
        required this.email,
        required this.password,
    });

    Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'password': password
    };
  }
}