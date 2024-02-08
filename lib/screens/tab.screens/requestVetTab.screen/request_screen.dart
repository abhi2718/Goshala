import 'package:flutter/material.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/color.dart';
import '../../../utils/utils.dart';
import '../../../widgets/text.widgets/text.dart';
import 'widgets/doctor_tile.dart';

class RequestScreen extends StatelessWidget {
  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.borderGreyColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        scrolledUnderElevation: 0.0,
        title: Text(
          "Raise a request",
          style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            decoration:
                BoxDecoration(color: AppColor.whiteColor, borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(right: 12),
            child: const Icon(
              Icons.email,
              color: AppColor.primaryColor,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
        child: Column(
          children: [
            GestureDetector(
              // onTap: () => showRaiseRequestDialog(context),
              onTap: () => showRaiseRequestDialogStatus(context),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                margin: const EdgeInsets.only(bottom: 12),
                decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(0, 0),
                          color: Colors.black45,
                          spreadRadius: 1,
                          blurRadius: 1.6)
                    ],
                    gradient: const LinearGradient(
                        colors: [Color(0xffa7bbf1), AppColor.borderGreyColor, AppColor.whiteColor],
                        stops: [0.2, 0.8, 1]),
                    color: AppColor.whiteColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  "Do you need any help?",
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600, fontSize: 20, color: Colors.black),
                ),
              ),
            ),
            const Align(alignment: Alignment.center, child: SubHeadingText("Available Resources")),
            const SizedBox(
              height: 12,
            ),
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DoctorTile(),
                    DoctorTile(),
                    DoctorTile(),
                    DoctorTile(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

showRaiseRequestDialog(BuildContext context) {
  final dimension = Utils.getDimensions(context, true);
  return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return Dialog(
          backgroundColor: AppColor.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            height: dimension["height"]! * 0.5,
            width: dimension["width"],
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
              child: Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.name,
                    style: GoogleFonts.inter(fontSize: 14),
                    cursorColor: AppColor.welcomeTextColor,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: AppColor.welcomeTextColor),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Select Cattle',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: GoogleFonts.inter(fontSize: 14),
                      cursorColor: AppColor.welcomeTextColor,
                      maxLines: 3,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: AppColor.welcomeTextColor),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        hintText: 'Select Cattle',
                      ),
                    ),
                  ),
                  CustomButton(onTap: () {}, title: "Submit"),
                ],
              ),
            ),
          ),
        );
      });
}

showRaiseRequestDialogStatus(BuildContext context) {
  final dimension = Utils.getDimensions(context, true);
  return showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return Dialog(
          backgroundColor: AppColor.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: SizedBox(
            height: dimension["height"]! * 0.5,
            width: dimension["width"],
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 50),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/verification_complete.png",
                    height: (dimension["height"]! * 0.5) * 0.4,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: SubHeadingText(
                      "Your request has been submitted successfully",
                      fontSize: 20,
                      textColor: Colors.black,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const ParagraphText(
                    "You’ll notified soon for your problem",
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
        );
      });
}
