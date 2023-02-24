import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/screens/home/list_user/habit_view_page.dart';
import 'package:info_dom/screens/home/list_user/house_map_page.dart';
import 'package:info_dom/screens/home/list_user/list_groceries_page.dart';
import 'package:info_dom/services/navigation.dart';
import 'package:info_dom/style/style.dart';
import 'package:info_dom/widgets/datail_user_widget/list_tile_localisation.dart';
import 'package:info_dom/widgets/datail_user_widget/list_tile_phone.dart';
import 'package:info_dom/widgets/datail_user_widget/personal_widget.dart';
import 'package:info_dom/widgets/datail_user_widget/preview_section_user.dart';

class DetailViewUser extends StatelessWidget {
  final User user;
  const DetailViewUser({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.getName),
      ),
      body: SingleChildScrollView(
        padding: padding,
        child: Column(
          children: [
            PersonalWidget(
              user: user,
            ),
            ListTileLocalisation(
              user: user,
            ),
            ListTilePhone(
              user: user,
            ),
            PreviewSectionUser(
              user: user,
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.home),
                ),
                title: const Text('Logement'),
                subtitle: const Text('2 étages 3 chambres'),
                trailing: trailingCard,
                onTap: () {
                  navigationWithAnimation(context, HouseMapPage());
                },
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.clean_hands),
                ),
                title: Text('Accès matériel / ménage'),
                subtitle: Text('pour le ménage, 2 fois par semaine'),
                trailing: trailingCard,
              ),
            ),
            const Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.dry_cleaning),
                ),
                title: Text('Accès matériel / linges'),
                subtitle: Text('pour le ménage, 2 fois par semaine'),
                trailing: trailingCard,
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.change_circle),
                ),
                title: const Text('Habitudes de vie'),
                subtitle: const Text('déjeuner à 12h, dîner à 19h'),
                trailing: trailingCard,
                onTap: () {
                  navigationWithAnimation(context, const HabitViewPage());
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.shopping_cart),
                ),
                title: const Text('Liste de courses'),
                subtitle: const Text('souvent des fruits et des légumes'),
                trailing: trailingCard,
                onTap: () {
                  navigationWithAnimation(context, const ListGroceriesPage());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
