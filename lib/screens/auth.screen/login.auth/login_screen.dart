import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/routes/routes_name.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:gaushala_frontend/widgets/text.widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/utils.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration:
                      const BoxDecoration(shape: BoxShape.circle, color: AppColor.iconBgColor),
                  child: const Icon(Icons.close),
                ),
                const SubHeadingText(
                  "Welcome to Gaushala App",
                  textColor: AppColor.welcomeTextColor,
                )
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: HeadingText("Verify your phone number with code"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 24),
                    child:
                        ParagraphText("We'll send you a code, it helps keep your account secure"),
                  ),
                  const ParagraphText("Your phone number"),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 24),
                    child: SizedBox(
                      width: dimension["width"]! * 0.6,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        style: GoogleFonts.inter(),
                        cursorColor: AppColor.welcomeTextColor,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(color: AppColor.welcomeTextColor),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(color: AppColor.borderGreyColor),
                          ),
                          hintText: 'Enter text',
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      SubHeadingText("Already have an account? "),
                      SubHeadingText(
                        "Sign up",
                        textColor: AppColor.welcomeTextColor,
                      ),
                    ],
                  )
                ],
              ),
            )),
            CustomButton(
                onTap: () => Navigator.pushNamed(context, RouteName.otpScreenRoute),
                title: "Send code")
          ],
        ),
      ),
    ));
  }
}
