import 'package:ecommerce_ui_flutter/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_ui_flutter/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_ui_flutter/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
};
