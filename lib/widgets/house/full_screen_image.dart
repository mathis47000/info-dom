import 'package:flutter/material.dart';

class FullScreenImage extends StatelessWidget {
  final String pictureName;
  final String tag;
  const FullScreenImage({Key? key, required this.pictureName, required this.tag})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagesssss'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.7,
                ),
                child: Hero(
                  tag: tag,
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
