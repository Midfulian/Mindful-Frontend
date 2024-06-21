import 'dart:io';

class TherapistRegistrationRequest {
  final int id;
  final String name;
  final String nationalIdCard;
  final String practiceLicenseId;
  final String professionalId;
  final String phone;

  TherapistRegistrationRequest({
    required this.id,
    required this.name,
    required this.nationalIdCard,
    required this.practiceLicenseId,
    required this.professionalId,
    required this.phone,
  });
}