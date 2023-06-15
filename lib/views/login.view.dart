import 'package:flutter/material.dart';
import 'package:login_signup_ui/utils/global.colors.dart';
import 'package:login_signup_ui/views/sign_up.view.dart';
import 'package:login_signup_ui/views/widgets/button.global.dart';
import 'package:login_signup_ui/views/widgets/social.login.dart';
import 'package:login_signup_ui/views/widgets/text.form.global.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(35.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Logo',
                      style: TextStyle(
                          color: GlobalColors.mainColor,
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Masuk ke akun anda',
                    style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //// Email input
                  TextFormGlobal(
                    controller: emailController,
                    text: "Email",
                    obscure: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  //// Password input
                  TextFormGlobal(
                    controller: passwordController,
                    text: "Password",
                    obscure: true,
                    textInputType: TextInputType.text,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ButtonGlobal(
                    text: "Masuk",
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  const SocialLogin()
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tidak punya akun?',
              style: TextStyle(color: GlobalColors.textColor),
            ),
            const SizedBox(
              width: 3,
            ),
            InkWell(
              child: Text(
                'Daftar',
                style: TextStyle(color: GlobalColors.mainColor),
              ),
              onTap: () => {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SignUp()))
              },
            )
          ],
        ),
      ),
    );
  }
}
