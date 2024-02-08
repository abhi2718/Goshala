import 'package:flutter/material.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../res/color.dart';
import '../../../utils/utils.dart';
import '../../../widgets/text.widgets/text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
        backgroundColor: AppColor.borderGreyColor,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Profile",
            style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      CircleAvatar(
                        backgroundImage: const NetworkImage(
                            "https://images.pexels.com/photos/5452293/pexels-photo-5452293.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                        radius: dimension["height"]! * 0.1,
                      ),
                      const Positioned(top: 100, right: 10, bottom: 0, child: Icon(Icons.camera))
                    ],
                  ),
                ),
                const SubHeadingText("Name"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
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
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'Hidayat Bukhari',
                    ),
                  ),
                ),
                const SubHeadingText("Email"),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
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
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      hintText: 'supererb23@gmail.com',
                    ),
                  ),
                ),
                const SubHeadingText("Location/Address"),

                //Will be visible only when thers a change in profile.
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: CustomButton(onTap: () {}, title: "Submit"),
                )
              ],
            ),
          ),
        ));
  }
}
