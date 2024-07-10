import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  String firstName;
  String lastName;
  final String username;
  final String email;
  String phoneNumber;
  String profilePicture;
  UserModel({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helper Function to get The Full name
  String get fullName => '$firstName $lastName';

  /// Helpre Function to fromat phone number
  String get formattedPhoneNo => AppFormatter.formatPhoneNumber(phoneNumber);

  /// static function to split name
  static List<String> nameParts(String fullname) => fullname.split(' ');

  /// static function to generate a username from the fullname
  static String generateUsername(String fullname) {
    List<String> nameParts = fullname.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts[1].length > 1 ? nameParts[1].toLowerCase() : "";

    String usernameWithPrefix = "cwt_$firstName$lastName";
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
        id: '',
        firstName: '',
        lastName: '',
        username: '',
        email: '',
        phoneNumber: '',
        profilePicture: '',
      );

  Map<String, dynamic> toJson() => {
        "FirstName": firstName,
        "LastName": lastName,
        "UserName": username,
        "Email": email,
        "PhoneNumber": phoneNumber,
        "ProfilePicture": profilePicture,
      };

  // factory UserModel.fromJson(DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data();

  //     return UserModel(
  //       id: document.id,
  //       firstName: data!['LastName'] ?? '',
  //       lastName: data['LastName'] ?? '',
  //       username: data['UserName'] ?? '',
  //       email: data['Email'] ?? '',
  //       phoneNumber: data['PhoneNumber'] ?? '',
  //       profilePicture: data['ProfilePicture'] ?? '',
  //     );
  //   }
  // }
}
