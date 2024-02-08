import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/routes/routes_name.dart';
import 'package:gaushala_frontend/utils/utils.dart';
import 'package:gaushala_frontend/widgets/addcattles.widget/add_cattles.dart';
import 'package:gaushala_frontend/widgets/button.widgets/add_cattle_button.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../widgets/text.widgets/text.dart';
import '../../../widgets/tiles.widgets/cattle_tile.dart';

class ManageScreen extends StatelessWidget {
  const ManageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.borderGreyColor,
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Manage",
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
        padding: const EdgeInsets.only(left: 25, right: 25, top: 32),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: BoxDecoration(
                  color: AppColor.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "03",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: AppColor.manageCountColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Cows",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: AppColor.manageCountColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "00",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: AppColor.manageCountColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Goats",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: AppColor.manageCountColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "03",
                        style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: AppColor.manageCountColor,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Total Cattles",
                        style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: AppColor.manageCountColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AddCattleButton(
                title: "Add Cattle", ontap: () => Utils.model(context, const AddCattles())),
            const Align(alignment: Alignment.centerLeft, child: SubHeadingText("Your cattles")),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, RouteName.cattleDetailsRoute);
                      },
                      child: const CattleTile(
                          cattleName: "Heera",
                          cattleDescription:
                              "This article will look at this subject, providing a brief overview of this subject."),
                    ),
                    const CattleTile(
                        cattleName: "Heera",
                        cattleDescription:
                            "This article will look at this subject, providing a brief overview of this subject."),
                    const CattleTile(
                        cattleName: "Heera",
                        cattleDescription:
                            "This article will look at this subject, providing a brief overview of this subject."),
                    const CattleTile(
                        cattleName: "Heera",
                        cattleDescription:
                            "This article will look at this subject, providing a brief overview of this subject."),
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
