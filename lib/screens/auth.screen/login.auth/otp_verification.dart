import 'package:flutter/material.dart';
import 'package:gaushala_frontend/screens/auth.screen/login.auth/verification_complete.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/color.dart';
import '../../../utils/utils.dart';
import '../../../widgets/button.widgets/custom_button.dart';
import '../../../widgets/text.widgets/text.dart';

class OTPVerificationScreen extends StatelessWidget {
  const OTPVerificationScreen({super.key});

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
              Container(
                padding: const EdgeInsets.all(4),
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, color: AppColor.iconBgColor),
                child: const Icon(Icons.arrow_back),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 35.0),
                      child: HeadingText("We just sent an SMS"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 12, bottom: 24),
                      child: ParagraphText("Enter the security code we sent to\n+91 9355439522"),
                    ),
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SubHeadingText("Didn’t get the code? "),
                            SubHeadingText(
                              "Resend it",
                              textColor: AppColor.welcomeTextColor,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_rounded,
                              color: AppColor.borderGreyColor,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            SubHeadingText("34"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              )),
              CustomButton(
                onTap: () => Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const VerificationCompleteScreen())),
                title: "Done",
              )
            ],
          ),
        ),
      ),
    );
  }
}
