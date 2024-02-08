import 'package:flutter/material.dart';
import 'package:gaushala_frontend/routes/routes_name.dart';
import 'package:gaushala_frontend/screens/auth.screen/auth.landing/landing_screen.dart';
import 'package:gaushala_frontend/screens/auth.screen/login.auth/login_screen.dart';
import 'package:gaushala_frontend/screens/auth.screen/login.auth/otp_verification.dart';
import 'package:gaushala_frontend/screens/auth.screen/login.auth/verification_complete.dart';
import 'package:gaushala_frontend/screens/auth.screen/signup.auth/signup.dart';
import 'package:gaushala_frontend/screens/tab.screens/managetab.screen/widgets/cattle_details.dart';
import 'package:gaushala_frontend/screens/tab.screens/tab_screen.dart';

import '../screens/splash_screen.dart';

class Routes {
  Map<String, Widget Function(BuildContext)> routes = {
    RouteName.splashRoute: (context) => const SplashScreen(),
    RouteName.authLandingRoute: (context) => const AuthLandingScreen(),
    RouteName.loginScreenRoute: (context) => const LoginScreen(),
    RouteName.signUpRoute: (context) => const SignUpScreen(),
    RouteName.otpScreenRoute: (context) => const OTPVerificationScreen(),
    RouteName.verificationCompleteRoute: (context) => const VerificationCompleteScreen(),
    RouteName.homeScreenRoute: (context) => const TabScreen(),
    RouteName.cattleDetailsRoute: (context) => const CattleDetails(),
  };
}
