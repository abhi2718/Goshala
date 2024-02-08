import 'package:flutter/material.dart';
import 'package:gaushala_frontend/screens/auth.screen/signup.auth/signup_complete.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/color.dart';
import '../../../utils/utils.dart';
import '../../../widgets/text.widgets/text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 35.0),
                    child: HeadingText("Lastly, tell us more about yourself"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 12, bottom: 24),
                    child: ParagraphText(
                        "Please enter your legal name. This information\nwill be used to verify your account."),
                  ),
                  const ParagraphText("First Name"),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 30),
                    child: TextField(
                      keyboardType: TextInputType.name,
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
                        hintText: 'Ex: Hidayat',
                      ),
                    ),
                  ),
                  const ParagraphText("Last Name"),
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: TextField(
                      keyboardType: TextInputType.name,
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
                        hintText: 'Ex: Bukhari',
                      ),
                    ),
                  ),
                ],
              ),
            )),
            CustomButton(
                onTap: () => Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => const SignUpCompleteScreen())),
                title: "Continue")
          ],
        ),
      ),
    ));
  }
}
