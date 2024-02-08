import 'package:flutter/material.dart';
import 'package:gaushala_frontend/widgets/button.widgets/custom_button.dart';
import 'package:gaushala_frontend/widgets/text.widgets/text.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../res/color.dart';
import '../../utils/utils.dart';

class AddCattles extends StatelessWidget {
  const AddCattles({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
      backgroundColor: AppColor.borderGreyColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Container(
            decoration:
                BoxDecoration(color: AppColor.whiteColor, borderRadius: BorderRadius.circular(10)),
            // padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 12, top: 6, bottom: 6),
            child: const Icon(
              Icons.arrow_back,
              color: AppColor.primaryColor,
            ),
          ),
        ),
        scrolledUnderElevation: 0.0,
        centerTitle: true,
        title: Text(
          "Add Cattle",
          style: GoogleFonts.montserrat(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: dimension["height"]! * 0.19,
                    width: dimension["width"]! * 0.34,
                    decoration:
                        BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.camera_alt), SubHeadingText("Add Photo")],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
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
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: AppColor.welcomeTextColor),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintText: 'Enter Name',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: TextField(
                              keyboardType: TextInputType.name,
                              style: GoogleFonts.inter(fontSize: 14),
                              cursorColor: AppColor.welcomeTextColor,
                              decoration: const InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: AppColor.welcomeTextColor),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                hintText: 'Enter Name',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
                child: TextField(
                  keyboardType: TextInputType.name,
                  style: GoogleFonts.inter(fontSize: 14),
                  cursorColor: AppColor.welcomeTextColor,
                  maxLines: 4,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: AppColor.welcomeTextColor),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    hintText: 'Description...',
                  ),
                ),
              ),
              SizedBox(
                  width: dimension["width"]! * 0.4,
                  child: CustomButton(onTap: () {}, title: "Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
