import 'package:flutter/material.dart';

import '../../res/color.dart';
import '../text.widgets/text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.onTap,
      required this.title,
      this.buttonColor = AppColor.primaryColor,
      this.textColor = AppColor.whiteColor});
  final VoidCallback onTap;
  final String title;
  final Color buttonColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: const EdgeInsets.symmetric(vertical: 8),
        padding: const EdgeInsets.symmetric(vertical: 14),
        decoration: BoxDecoration(color: buttonColor, borderRadius: BorderRadius.circular(5)),
        child: SubHeadingText(
          title,
          textColor: textColor,
        ),
      ),
    );
  }
}
