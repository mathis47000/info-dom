import 'package:flutter/material.dart';
import 'package:info_dom/widgets/house/full_screen_image.dart';

class LaundryAccesPage extends StatelessWidget {
  const LaundryAccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String networkImageName =
        'https://www.wall-art.de/out/pictures/generated/product/1/780_780_80/01-holzdeko-mdf-laundry-room-web.jpg';
    return const Scaffold(
      body: FullScreenImage(
        pictureName: networkImageName,
        tag: networkImageName,
      ),
    );
  }
}
