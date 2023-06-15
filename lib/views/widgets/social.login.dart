import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_signup_ui/utils/global.colors.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: Text(
            "Masuk dengan",
            style: TextStyle(
              color: GlobalColors.textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: Row(
            children: [
              //// Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10)
                      ]),
                  child: SvgPicture.asset(
                    "assets/images/google.svg",
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              //// Facebook
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10)
                      ]),
                  child: SvgPicture.asset(
                    "assets/images/facebook.svg",
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              //// Google
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10)
                      ]),
                  child: SvgPicture.asset(
                    "assets/images/twitter.svg",
                    height: 20,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
