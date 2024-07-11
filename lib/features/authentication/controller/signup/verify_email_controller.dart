import 'dart:async';

import 'package:e_commerce/common/widgets/loaders/loaders.dart';
import 'package:e_commerce/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerifyEmailController extends GetxController {
  static VerifyEmailController get instance => Get.find();

  @override
  void onInit() {
    sendEmailVerification();
    setTimerForAutoRedirect();
    super.onInit();
  }

  Future<void> sendEmailVerification() async {
    try {
      await AuthenticationRepository.instance.sendEmailVerification();
      AppLoaders.successSnackBar(
        title: 'Email sent',
        message: 'Please check your inbox and verify your email',
      );
    } catch (e) {
      AppLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  // timer to automatically redirect an email verification
  void setTimerForAutoRedirect() {
    FirebaseAuth.instance.currentUser?.reload();
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      FirebaseAuth.instance.currentUser?.reload();
      final user = FirebaseAuth.instance.currentUser;
      if (user != null && user.emailVerified) {
        timer.cancel();
        Get.off(() => SuccessScreen(
              image: AppImages.successfulyRegisterAnimation,
              title: AppTexts.yourAccountCreatedTitle,
              subtitle: AppTexts.yourAccountCreatedSubTitle,
              onPressed: () =>
                  AuthenticationRepository.instance.screenRedirect(),
            ));
      }
    });
  }

  /// Manually check if email verified
  Future<void> checkEmailVerificationStatus() async {
    final currUser = FirebaseAuth.instance.currentUser;
    if (currUser != null && currUser.emailVerified) {
      Get.off(() => SuccessScreen(
            image: AppImages.successfulyRegisterAnimation,
            title: AppTexts.yourAccountCreatedTitle,
            subtitle: AppTexts.yourAccountCreatedSubTitle,
            onPressed: () => AuthenticationRepository.instance.screenRedirect(),
          ));
    }
  }
}
