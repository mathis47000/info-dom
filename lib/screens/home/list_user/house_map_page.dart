import 'dart:math';

import 'package:flutter/material.dart';
import 'package:info_dom/services/navigation.dart';
import 'package:info_dom/widgets/house/full_screen_image.dart';

class HouseMapPage extends StatelessWidget {
  const HouseMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Rez-de-chaussée'),
              Tab(text: '1er étage'),
              Tab(text: 'Photos'),
            ],
          ),
          title: const Text("Logement"),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            Center(
              child: InteractiveViewer(
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/plans-maison.jpg',
                    ),
                    // 5 point place random in the image with x and y coordinates
                    for (var i = 0; i < 10; i++)
                      Positioned(
                        left: MediaQuery.of(context).size.width /
                            10 *
                            i.toDouble(),
                        top: MediaQuery.of(context).size.width /
                            13 *
                            i.toDouble(),
                        child: GestureDetector(
                          onTap: () {
                            navigationWithAnimation(
                              context,
                              FullScreenImage(
                                pictureName:
                                    'https://picsum.photos/400?image=${i + 1}',
                              ),
                            );
                          },
                          child: Hero(
                            tag: 'https://picsum.photos/400?image=${i + 1}',
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              child: Text(
                                '${i + 1}',
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            InteractiveViewer(
              child: Image.asset(
                'assets/images/plans-maison.jpg',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: List.generate(100, (index) {
                  var picture =
                      'https://picsum.photos/900/1900?image=${index + 1}';
                  return GestureDetector(
                    onTap: () {
                      navigationWithAnimation(
                        context,
                        FullScreenImage(
                          pictureName: picture,
                        ),
                      );
                    },
                    child: GridTile(
                      footer: Material(
                        color: Colors.transparent,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(8),
                        )),
                        clipBehavior: Clip.antiAlias,
                        child: GridTileBar(
                          backgroundColor: Colors.black45,
                          leading: const Icon(Icons.image),
                          title: Text('Image $index'),
                          subtitle: Text('Subtitle $index'),
                        ),
                      ),
                      child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        clipBehavior: Clip.antiAlias,
                        child: Hero(
                          tag: picture,
                          child: FadeInImage.assetNetwork(
                            placeholder: 'assets/images/logo.png',
                            image: picture,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
