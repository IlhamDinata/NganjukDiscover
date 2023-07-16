import 'package:flutter/material.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTile(imagePath: 'assets/gambar/google.png'),
            const SizedBox(width: 10),
            SquareTile(imagePath: 'assets/gambar/facebook.png'),
          ],
        ),
      ],
    );
  }
}
