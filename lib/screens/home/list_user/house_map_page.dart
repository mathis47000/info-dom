import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:info_dom/services/navigation.dart';
import 'package:info_dom/style/style.dart';
import 'package:info_dom/widgets/house/full_screen_image.dart';

class HouseMapPage extends StatelessWidget {
  HouseMapPage({Key? key}) : super(key: key);
  final List<int> list = [41, 71, 55, 74, 1, 8];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(text: 'Plans'),
              Tab(text: 'Photos'),
            ],
          ),
          title: const Text("Logement"),
        ),
        body: TabBarView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            ListView.builder(
              itemCount: 2,
              padding: padding,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: padding,
                    child: Column(
                      children: [
                        Text('Plan ${index + 1}',
                            style: Theme.of(context).textTheme.titleMedium),
                        Stack(
                          children: [
                            Image.asset(
                              'assets/images/plans-maison.jpg',
                            ),
                            //grid of positionned points
                            Positioned.fill(
                              child: GridView.count(
                                crossAxisCount: 10,

                                //remove scroll
                                physics: const NeverScrollableScrollPhysics(),
                                children: List.generate(
                                  1000,
                                  (index2) {
                                    if (list.contains(index2)) {
                                      return GestureDetector(
                                        onTap: () {
                                          navigationWithAnimation(
                                            context,
                                            FullScreenImage(
                                              pictureName:
                                                  'https://picsum.photos/900/1800?image=${(index2 + 1)}',
                                              tag:
                                                  'Plan ${index + 1} - Point ${index2 + 1}',
                                            ),
                                          );
                                        },
                                        child: Hero(
                                          tag:
                                              'Plan ${index + 1} - Point ${index2 + 1}',
                                          child: const CircleAvatar(
                                            backgroundColor: Colors.red,
                                            child: Icon(Icons.double_arrow),
                                          ),
                                        ),
                                      );
                                    } else {
                                      return Container();
                                    }
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: padding,
              children: List.generate(10, (index) {
                var picture =
                    'https://picsum.photos/900/1900?image=${index + 1}';
                return GestureDetector(
                  onTap: () {
                    navigationWithAnimation(
                      context,
                      FullScreenImage(
                        pictureName: picture,
                        tag: picture,
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
          ],
        ),
      ),
    );
  }
}
