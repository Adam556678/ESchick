import 'package:e_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:e_commerce/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:e_commerce/utils/exceptions/firebase_exceptions.dart';
import 'package:e_commerce/utils/exceptions/format_exceptions.dart';
import 'package:e_commerce/utils/exceptions/platform_exceptions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  // getter
  static AuthenticationRepository get instance => Get.find();

  //variables
  final deviceStorage = GetStorage();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    FlutterNativeSplash.remove();
    onScreenRedirect();
  }

  // Function to show Relevant Screen
  onScreenRedirect() async {
    //Local Storage
    deviceStorage.writeIfNull('isFirstTime', true);

    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(() => const OnboardingScreen());
  }

  /* --------------------------- Email & Password Sign-in --------------------------------- */

  /// Register
  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseAuthException catch (e) {
      throw AppFirebaseAuthException(e.code).message;
    } on FirebaseException catch (e) {
      throw AppFirebaseExceptions(e.code).message;
    } on FormatException catch (_) {
      throw const AppFormatExceptions();
    } on PlatformException catch (e) {
      throw AppPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Something Went Wrong, Please try again';
    }
  }
}
