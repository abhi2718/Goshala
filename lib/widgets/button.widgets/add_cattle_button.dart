import 'package:flutter/material.dart';

import '../../res/color.dart';
import '../text.widgets/text.dart';

class AddCattleButton extends StatelessWidget {
  const AddCattleButton({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        decoration:
            BoxDecoration(color: AppColor.primaryColor, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.add_circle,
              color: AppColor.whiteColor,
            ),
            const SizedBox(
              width: 4,
            ),
            SubHeadingText(
              title,
              textColor: AppColor.whiteColor,
            )
          ],
        ),
      ),
    );
  }
}
