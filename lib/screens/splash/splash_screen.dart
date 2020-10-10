import 'package:ecommerce_ui_flutter/screens/splash/components/body.dart';
import 'package:ecommerce_ui_flutter/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your startin screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
