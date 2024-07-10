import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/personalization/model/user_model.dart';
import 'package:e_commerce/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce/utils/exceptions/platform_exceptions.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserRepository extends GetxController {
  UserRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  /// function to save user data to firestore
  Future<void> saveUserRecord(UserModel user) async {
    try {
      await _db.collection('Users').doc(user.id).set(user.toJson());
    } on FirebaseException catch (e) {
      throw AppFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const AppFormatExceptions();
    } on PlatformException catch (e) {
      throw AppPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something went wrong, try again';
    }
  }

  /// function to fetchuser details
}
