import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/screens/auth.screen/signup.auth/signup.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:gaushala_frontend/widgets/text.widgets/text.dart';

import '../../../utils/utils.dart';

class VerificationCompleteScreen extends StatelessWidget {
  const VerificationCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 31, right: 31, bottom: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/verification_complete.png',
                        height: dimension["height"]! * 0.26,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 48.0, bottom: 8),
                        child: SubHeadingText(
                          "Verification Complete",
                          fontSize: 24,
                          textColor: AppColor.whiteColor,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const ParagraphText(
                        "Your Phone number has been verified.",
                        textColor: AppColor.whiteColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomButton(
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const SignUpScreen())),
              title: "Continue",
              buttonColor: AppColor.whiteColor,
              textColor: AppColor.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
