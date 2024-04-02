class SignUserRequest {
  String first_name;
  String last_name;
  String email;
  String phoneNumber;
  String languagePreference;
  String country;
  String photoURL;
  String profile_picture;

  SignUserRequest({
    required this.first_name,
    required this.last_name,
    required this.email,
    required this.phoneNumber,
    required this.languagePreference,
    required this.country,
    required this.photoURL,
    required this.profile_picture,
  });

  Map<String,dynamic> toJson() {
    return {
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'photoURL': photoURL,
      'phone_number': phoneNumber,
      'language_preference': languagePreference,
      'country': country,
      'profile_picture': profile_picture,
    };
  }
}