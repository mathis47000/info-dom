import 'dart:math';

import 'package:flutter/material.dart';

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
            InteractiveViewer(
              child: const Image(
                image: AssetImage('assets/images/plans-maison.jpg'),
              ),
            ),
            InteractiveViewer(
              child: const Image(
                image: AssetImage('assets/images/plans-maison.jpg'),
              ),
            ),
            // grid of placholder images for now, 2 collumns
            GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: List.generate(100, (index) {
                return Placeholder(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  child: GridTile(
                    footer: Material(
                      color: Colors.transparent,
                      child: GridTileBar(
                        backgroundColor: Colors.black45,
                        leading: const Icon(Icons.image),
                        title: Text('Image $index'),
                        subtitle: Text('Subtitle $index'),
                      ),
                    ),
                    child: Center(
                      child: Text('Image $index'),
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
