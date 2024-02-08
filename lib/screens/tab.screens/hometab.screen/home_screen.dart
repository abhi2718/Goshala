import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/utils/utils.dart';
import 'package:gaushala_frontend/widgets/addcattles.widget/add_cattles.dart';
import 'package:gaushala_frontend/widgets/text.widgets/text.dart';
import 'package:gaushala_frontend/widgets/tiles.widgets/cattle_tile.dart';

import '../../../widgets/button.widgets/add_cattle_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, true);
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
              height: dimension["height"]! * 0.35,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Image
                  Image.network(
                    "https://images.pexels.com/photos/2496506/pexels-photo-2496506.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    fit: BoxFit.cover,
                  ),
                  // Black overlay
                  Positioned.fill(
                    child: Container(
                      color: Colors.black.withOpacity(0.62), // Adjust the opacity as needed
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SubHeadingText(
                          "Hi, Hidayat",
                          fontSize: 21,
                          textColor: AppColor.whiteColor,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        SubHeadingText(
                          "Welcome to your Gaushala Management App",
                          fontSize: 25,
                          textColor: AppColor.whiteColor,
                        )
                      ],
                    ),
                  )
                  // Other widgets can be added here on top of the image and overlay
                ],
              ),
            ),
            Positioned(
              top: dimension['height']! * 0.3,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [-0.3, 0.9, 1.0],
                    colors: [
                      Color(0xffFFF066),
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Center(
                          child: AddCattleButton(
                            ontap: () {
                              Utils.model(context, const AddCattles());
                            },
                            title: "Add Cattle",
                          ),
                        ),
                        const SubHeadingText("Your cattles"),
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
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
