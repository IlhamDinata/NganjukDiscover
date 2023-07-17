import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nganjuk_discover/utils/app_pages.dart';
import 'package:nganjuk_discover/utils/mycolors.dart';
import 'package:nganjuk_discover/utils/mytext.dart';
import 'package:nganjuk_discover/utils/square_tile.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'or Sign In With',
                  style: MyText().transparanttext,
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SquareTile(
                  imagePath: 'assets/gambar/google.png',
                  text: 'Google',
                ),
                const SizedBox(width: 10),
                SquareTile(
                    imagePath: 'assets/gambar/facebook.png', text: 'Facebook'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
              child: InkWell(
                onTap: () {
                  Get.toNamed(PagesPath.homepage);
                },
                child: SquareTile(
                    imagePath: 'assets/gambar/guest.png',
                    text: 'Login as Guest'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
