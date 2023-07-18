import 'package:flutter/material.dart';
import 'package:nganjuk_discover/utils/square_tile.dart';

class IconCategory extends StatelessWidget {
  const IconCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SquareTileWhite(
              onTap: () {},
              text: 'Wisata',
              imagePath: 'assets/gambar/iconwisata.png',
            ),
            const SizedBox(width: 5),
            SquareTileWhite(
              onTap: () {},
              text: 'Kuliner',
              imagePath: 'assets/gambar/iconwisata.png',
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: SquareTileWhite(
                onTap: () {},
                text: 'Pendidikan',
                imagePath: 'assets/gambar/iconwisata.png',
              ),
            ),
            const SizedBox(width: 5),
            SquareTileWhite(
              onTap: () {},
              text: 'UMKM',
              imagePath: 'assets/gambar/iconwisata.png',
            ),
          ],
        ),
      ],
    );
  }
}
