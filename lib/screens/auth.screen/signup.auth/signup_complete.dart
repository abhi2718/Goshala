import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/routes/routes_name.dart';
import 'package:gaushala_frontend/screens/auth.screen/signup.auth/signup.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:gaushala_frontend/widgets/text.widgets/text.dart';

import '../../../utils/utils.dart';

class SignUpCompleteScreen extends StatelessWidget {
  const SignUpCompleteScreen({super.key});

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
                        'assets/images/signup_complete.png',
                        height: dimension["height"]! * 0.26,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 48.0, bottom: 8),
                        child: SubHeadingText(
                          "All done!",
                          fontSize: 24,
                          textColor: AppColor.whiteColor,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const ParagraphText(
                        "Your account has been created. You're now ready to explore and enjoy all the features and benefits we have to offer.",
                        textColor: AppColor.whiteColor,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomButton(
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, RouteName.homeScreenRoute, (route) => false),
              title: "Start Exploring App",
              buttonColor: AppColor.whiteColor,
              textColor: AppColor.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
