import 'package:flutter/material.dart';
import 'package:gaushala_frontend/routes/routes_name.dart';

import '../screens/splash_screen.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> routes = {
    RouteName.splashRoute: (context) => const SplashScreen()
  };
}
