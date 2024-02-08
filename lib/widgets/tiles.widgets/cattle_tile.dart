import 'package:flutter/material.dart';
import 'package:gaushala_frontend/res/color.dart';
import 'package:gaushala_frontend/utils/utils.dart';
import 'package:gaushala_frontend/widgets/text.widgets/text.dart';

class CattleTile extends StatelessWidget {
  const CattleTile({super.key, required this.cattleName, required this.cattleDescription});
  final String cattleName;
  final String cattleDescription;
  @override
  Widget build(BuildContext context) {
    final dimension = Utils.getDimensions(context, false);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColor.whiteColor,
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: dimension["height"]! * 0.11,
            width: dimension["width"]! * 0.21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              shape: BoxShape.rectangle,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://images.pexels.com/photos/162240/bull-calf-heifer-ko-162240.jpeg",
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  final totalBytes = loadingProgress.expectedTotalBytes;
                  final bytesLoaded = loadingProgress.cumulativeBytesLoaded;
                  final value = totalBytes == null ? null : bytesLoaded / totalBytes;
                  return Center(
                    child: CircularProgressIndicator(
                      value: value,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ParagraphHeadingText(cattleName),
                ParagraphText(
                  cattleDescription,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
