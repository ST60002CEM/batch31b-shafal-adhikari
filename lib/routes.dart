import 'package:wandroz/screens/auth/login_screen.dart';
import 'package:wandroz/screens/auth/signup_screen.dart';
import 'package:wandroz/screens/splash_screen.dart';
import 'package:wandroz/screens/user/profile_screen.dart';

final routes = {
  '/splash': (context) => const SplashScreen(),
  '/login': (context) => const LoginScreen(),
  '/signup': (context) => const SignupScreen(),
  '/profile': (context) => const ProfileScreen()
};
