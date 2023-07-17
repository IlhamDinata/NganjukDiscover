import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nganjuk_discover/utils/app_pages.dart';
import 'package:nganjuk_discover/utils/button_box.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:nganjuk_discover/utils/social_button.dart';
import 'package:nganjuk_discover/utils/text_box.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController reTypePasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  child: Image.asset('assets/gambar/login.png'),
                ),
                const SizedBox(height: 30),
                Text(
                  'Register Your Account',
                  style: MyText().titlelogregtext,
                ),
                const SizedBox(height: 20),
                TextBox(
                    controller: usernameController,
                    text: 'Username',
                    textInputType: TextInputType.name,
                    obscure: false),
                const SizedBox(height: 20),
                TextBox(
                    controller: emailController,
                    text: 'E-Mail',
                    textInputType: TextInputType.emailAddress,
                    obscure: false),
                const SizedBox(height: 20),
                TextBox(
                    controller: emailController,
                    text: 'Password',
                    textInputType: TextInputType.visiblePassword,
                    obscure: true),
                const SizedBox(height: 20),
                TextBox(
                    controller: reTypePasswordController,
                    text: 'Re-Type Your Password',
                    textInputType: TextInputType.visiblePassword,
                    obscure: true),
                const SizedBox(height: 20),
                ButtonBox(
                  onTap: () {
                    // Get.toNamed(PagesPath.homepage);
                    Get.snackbar(
                      'Register',
                      'Register Successfully',
                      duration: Duration(seconds: 1),
                    );
                  },
                  label: 'Sign Up',
                ),
                const SizedBox(height: 25),
                SocialButton(),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account ?',
                      style: MyText().transparanttext,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(PagesPath.loginpage);
                      },
                      child: Text(
                        ' Login here',
                        style: MyText().smallbuttontext,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
