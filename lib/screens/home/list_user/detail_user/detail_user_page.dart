import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/screens/home/list_user/detail_user/habit_page.dart';
import 'package:info_dom/screens/home/list_user/detail_user/house_map_page.dart';
import 'package:info_dom/screens/home/list_user/detail_user/household_acces_page.dart';
import 'package:info_dom/screens/home/list_user/detail_user/laundry_acces_page.dart';
import 'package:info_dom/screens/home/list_user/detail_user/list_groceries_page.dart';
import 'package:info_dom/services/navigation.dart';
import 'package:info_dom/style/style.dart';
import 'package:info_dom/widgets/datail_user_widget/list_tile_localisation.dart';
import 'package:info_dom/widgets/datail_user_widget/list_tile_phone.dart';
import 'package:info_dom/widgets/datail_user_widget/personal_widget.dart';
import 'package:info_dom/widgets/datail_user_widget/preview_section_user.dart';

class DetailUserPage extends StatelessWidget {
  final User user;
  const DetailUserPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.getName),
        actions: [
          IconButton(
            icon: const Icon(Icons.cloud_download_outlined),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => const AlertDialog(
                        title: Text('Téléchargement'),
                        content: LinearProgressIndicator(
                          backgroundColor: Colors.white,
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.blue),
                        ),
                      ));
            },
          ),
        ],
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
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.clean_hands),
                ),
                title: Text('Accès matériel / ménage'),
                subtitle: Text('pour le ménage, 2 fois par semaine'),
                trailing: trailingCard,
                onTap: () {
                  navigationWithAnimation(context, const HouseholdAccesPage());
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Icon(Icons.dry_cleaning),
                ),
                title: Text('Accès matériel / linges'),
                subtitle: Text('pour le ménage, 2 fois par semaine'),
                trailing: trailingCard,
                onTap: () {
                  navigationWithAnimation(context, const LaundryAccesPage());
                },
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
                  navigationWithAnimation(context, const HabitPage());
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
