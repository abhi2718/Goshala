import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../res/color.dart';

class BaseText extends StatelessWidget {
  final String title;
  final TextStyle style;
  final TextAlign textAlign;
  final TextOverflow textOverflow;
  final int maxLines;
  const BaseText(
      {super.key,
      required this.title,
      required this.style,
      this.textAlign = TextAlign.start,
      this.textOverflow = TextOverflow.ellipsis,
      this.maxLines = 2});

  @override
  Widget build(BuildContext context) {
    return (Text(
      title,
      textAlign: textAlign,
      style: style,
      overflow: textOverflow,
      maxLines: maxLines,
    ));
  }
}

class HeadingText extends StatelessWidget {
  final String title;
  const HeadingText(this.title, {super.key});
  @override
  Widget build(BuildContext context) {
    return BaseText(
      title: title,
      style: GoogleFonts.inter(
          color: AppColor.darkTextColor, fontWeight: FontWeight.w700, fontSize: 28),
      textOverflow: TextOverflow.ellipsis,
    );
  }
}

class SubHeadingText extends StatelessWidget {
  final String title;
  final double fontSize;
  final TextAlign textAlign;
  final Color textColor;
  const SubHeadingText(
    this.title, {
    super.key,
    this.textColor = AppColor.darkTextColor,
    this.fontSize = 16,
    this.textAlign = TextAlign.start,
  });
  @override
  Widget build(BuildContext context) {
    return BaseText(
      title: title,
      textAlign: textAlign,
      style: GoogleFonts.inter(
        color: textColor,
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
      ),
    );
  }
}

class ParagraphHeadingText extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  const ParagraphHeadingText(this.title, {super.key, this.textAlign = TextAlign.start});
  @override
  Widget build(BuildContext context) {
    return BaseText(
      title: title,
      style: GoogleFonts.montserrat(
        color: AppColor.darkTextColor,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      ),
    );
  }
}

class ParagraphText extends StatelessWidget {
  final String title;
  final TextAlign textAlign;
  final Color textColor;
  const ParagraphText(this.title,
      {super.key, this.textAlign = TextAlign.start, this.textColor = AppColor.darkTextColor});
  @override
  Widget build(BuildContext context) {
    return BaseText(
      title: title,
      maxLines: 10,
      textAlign: textAlign,
      style: GoogleFonts.inter(color: textColor, fontWeight: FontWeight.w500, fontSize: 14),
    );
  }
}
