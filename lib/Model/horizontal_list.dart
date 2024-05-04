import 'package:gr_project/mock.dart';

class HorizontalList {
  String docImage;
  String docName;
  String docSpecialist;
  String rate;
  int price;
  int perMinute;
  HorizontalList({
    required this.docImage,
    required this.docName,
    required this.docSpecialist,
    required this.rate,
    required this.price,
    required this.perMinute,
  });
}

List<HorizontalList> getHorizontalList() {
  List<HorizontalList> list = [];

  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'User Email',
      docSpecialist: 'User Phone Number',
      rate: '4.9 (5587 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );
  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'Areg Hagag',
      docSpecialist: 'Psychologist',
      rate: '4.7 (5287 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );
  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'Mona Ali',
      docSpecialist: 'Psychologist',
      rate: '4.5 (5187 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );
  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'Mohamed Elbaiomy',
      docSpecialist: 'Psychologist',
      rate: '4.0 (578 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );

  return list;
}
