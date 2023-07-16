import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nganjuk_discover/utils/button_box.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:nganjuk_discover/utils/social_button.dart';
import 'package:nganjuk_discover/utils/text_box.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Image.asset(
                    'assets/gambar/login.png',
                    alignment: Alignment.topCenter,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Login to your account',
                  style: MyText().titlelogregtext,
                ),
                const SizedBox(height: 20),
                TextBox(
                  controller: emailController,
                  text: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,
                ),
                const SizedBox(height: 20),
                TextBox(
                    controller: passwordController,
                    text: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    obscure: true),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password ?',
                          style: MyText().transparanttext,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ButtonBox(),
                const SizedBox(height: 35),
                SocialButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
