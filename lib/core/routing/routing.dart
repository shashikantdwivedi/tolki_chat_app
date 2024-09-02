import 'package:flutter/material.dart';
import 'package:tolki_chat_app/modules/authentication/ui/login_screen.dart';
import 'package:tolki_chat_app/modules/authentication/ui/verify_otp_screen.dart';
import 'package:tolki_chat_app/modules/welcome/ui/welcome_screen.dart';
import '../../components/online.dart';
import '../../modules/splash/ui/splash_screen.dart';

part 'routes.dart';

class Routing {
  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(
            builder: (_) => const XOnline(child: SplashScreen()),
            settings: settings);
      case Routes.welcome:
        return MaterialPageRoute(
            builder: (_) => const XOnline(child: WelcomeScreen()),
            settings: settings);
      case Routes.login:
        return MaterialPageRoute(
            builder: (_) => const XOnline(child: LoginScreen()),
            settings: settings);
      case Routes.verifyOtp:
        return MaterialPageRoute(
            builder: (_) => const XOnline(child: VerifyOtpScreen()),
            settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => const XOnline(child: SplashScreen()),
            settings: settings);
    }
  }
}
