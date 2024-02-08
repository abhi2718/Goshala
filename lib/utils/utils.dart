import 'package:flutter/material.dart';

class Utils {
  static Map<String, double> getDimensions(BuildContext context, bool includeAppBarHeight) {
    final appBarHeight = includeAppBarHeight ? AppBar().preferredSize.height : 0;
    final deviceHeight = MediaQuery.of(context).size.height -
        appBarHeight -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final deviceWidth = MediaQuery.of(context).size.width;
    return {"height": deviceHeight, "width": deviceWidth};
  }

  static void model(BuildContext context, Widget widgetContainer) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      enableDrag: false,
      builder: (BuildContext context) => widgetContainer,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
    );
  }
}
