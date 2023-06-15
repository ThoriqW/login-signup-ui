import 'package:flutter/material.dart';
import 'package:login_signup_ui/utils/global.colors.dart';
import 'package:login_signup_ui/views/login.view.dart';
import 'package:login_signup_ui/views/widgets/button.global.dart';
import 'package:login_signup_ui/views/widgets/text.form.global.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

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
                      "Logo",
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: GlobalColors.mainColor),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Buat akun anda",
                    style: TextStyle(
                        color: GlobalColors.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //// Email
                  TextFormGlobal(
                      controller: emailController,
                      text: "Email",
                      textInputType: TextInputType.emailAddress,
                      obscure: false),
                  const SizedBox(
                    height: 15,
                  ),
                  //// Password
                  TextFormGlobal(
                      controller: passwordController,
                      text: "Password",
                      textInputType: TextInputType.text,
                      obscure: true),
                  const SizedBox(
                    height: 15,
                  ),
                  //// Confirm password
                  TextFormGlobal(
                      controller: confirmPasswordController,
                      text: "Confirm Password",
                      textInputType: TextInputType.text,
                      obscure: true),
                  const SizedBox(
                    height: 20,
                  ),
                  const ButtonGlobal(text: "Daftar"),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah punya akun?",
                        style: TextStyle(color: GlobalColors.textColor),
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      InkWell(
                        child: Text(
                          "Masuk",
                          style: TextStyle(color: GlobalColors.mainColor),
                        ),
                        onTap: () => {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginView(),
                              ))
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
