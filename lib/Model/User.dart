class MyUser {
  
  int? id;
  String first_name;
  String last_name;
  String email;
  String phoneNumber;
  String password;
  String languagePreference;
  String country;
  DateTime? createdAt;
  DateTime? updatedAt;

  MyUser({
    this.id,
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.languagePreference,
    required this.country,
    this.createdAt,
    this.updatedAt,
  });
  
  Map<String,dynamic> toJson() {
    return {
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'languagePreference': languagePreference,
      'country': country,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}