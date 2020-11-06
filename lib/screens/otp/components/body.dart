import 'package:ecommerce_ui_flutter/constants.dart';
import 'package:ecommerce_ui_flutter/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          children: [
            Text("OTP Verification", style: headingStyle),
            Text("We sent your code to +1 898 869 ***"),
            buildTimer(),
            OtpForm(),
          ],     
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This code will expired in "),
            TweenAnimationBuilder(
              tween: Tween(begin: 30.0, end: 0),
              duration: Duration(seconds: 30),
              builder: (context, value, child) => Text(
                "00:${value.toInt()}",
                style: TextStyle(color: kPrimaryColor),
              ),
              onEnd: () {},
            )
          ],
        );
  }
}

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        children: [
          SizedBox(
            width: getProportionateScreenWidth(60),
            child: TextFormField(
              style: TextStyle(fontSize: 24),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: getProportionateScreenWidth(15),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: kTextColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}