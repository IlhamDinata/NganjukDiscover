import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/button_box.dart';
import 'package:nganjuk_discover/utils/mytext.dart';

class EmailSentPage extends StatelessWidget {
  const EmailSentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: MyColor.three,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: MyColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: Text(
                    'Forgot Your Password ?',
                    style: MyText().titleforgotpassword,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Enter your registered email below to receive password reset instruction',
                    style: MyText().contentforgotpassword,
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    child: Image.asset('assets/gambar/sendemail.png'),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Remember Password ?',
                      style: MyText().transparanttext,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login Here',
                        style: MyText().smallbuttontext,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                ButtonBox(
                  onTap: () {},
                  label: 'Send Email',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
