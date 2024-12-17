

class User {
  String email;
  String password;
  String gender;
  int status;
  double age;
  bool termsAgreed;
  bool notificationsEnabled;
  String notes;

  User({
    required this.email,
    required this.password,
    required this.gender,
    required this.status,
    required this.age,
    required this.termsAgreed,
    required this.notificationsEnabled,
    required this.notes,
  });

  Map<String, dynamic> toMap() {
    return {
      'email': email,
      'password': password,
      'gender': gender,
      'status': status,
      'age': age,
      'termsAgreed': termsAgreed,
      'notificationsEnabled': notificationsEnabled,
      'notes': notes,
    };
  }
}

class DATA {
  
  static Map<String, User> users = {};

  static bool emailExists(String email) {
    return users.containsKey(email);
  }

  static void addUser(User user) {
    users[user.email] = user;
    users[user.password] = user;
  }

  static User? authenticate(String email, String password) {
    if (users.containsKey(email) && users[email]?.password == password) {
      return users[email];
    }
    return null; 
  }

  
}
