import 'package:gr_project/Model/User.dart';

class Mock {

  late MyUser patient;

  Mock._create();

  static Future<Mock> create() async {
    var mock = Mock._create();

    mock.patient = MyUser(
      id: 1,
      first_name: 'Ziad',
      last_name: 'Alsharif',
      email: 'ziad@gmail.com',
      phoneNumber: '1234567890',
      password: 'password',
      languagePreference: 'en',
      country: 'US',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
    );
      
    return mock;
  }
}
