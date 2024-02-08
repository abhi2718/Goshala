import 'package:flutter/material.dart';
import 'package:gaushala_frontend/widgets/button.widgets/add_cattle_button.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../res/color.dart';

class CattleDetails extends StatelessWidget {
  const CattleDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/162240/bull-calf-heifer-ko-162240.jpeg"),
                radius: 76,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
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
                    ),
                    hintText: 'Cattle Name: Heera',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
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
                    ),
                    hintText: 'Cattle Age: 1 Years',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
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
                    ),
                    hintText: 'Description: This is my cattle',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: CustomButton(onTap: () {}, title: "Edit Profile"),
              )
            ],
          ),
        ));
  }
}
