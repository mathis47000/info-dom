import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  String pictureName;
  FullScreenImage({
    Key? key,
    required this.pictureName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.7,
                ),
                child: Hero(
                  tag: pictureName,
                  child: Material(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: FadeInImage.assetNetwork(
                      placeholder: 'assets/images/logo.png',
                      image: pictureName,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),

            // title and description
            const Card(
              child: ListTile(
                title: Text('Title'),
                subtitle: Text('Description'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
