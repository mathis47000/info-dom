import 'package:flutter/material.dart';
import 'package:info_dom/widgets/house/full_screen_image.dart';

class HouseholdAccesPage extends StatelessWidget {
  const HouseholdAccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String image =
        'https://hips.hearstapps.com/hmg-prod/images/gettyimages-510693044-1550590816.jpg';
    return const Scaffold(
        body: FullScreenImage(
      pictureName: image,
      tag: image,
    ));
  }
}
