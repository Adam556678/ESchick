import 'package:e_commerce/features/authentication/screens/login/login_screen.dart';
import 'package:e_commerce/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AuthenticationRepository extends GetxController {
  // getter
  static AuthenticationRepository get instance => Get.find();

  //variables
  final deviceStorage = GetStorage();

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
}
