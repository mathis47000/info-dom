import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/widgets/data_display.dart';
import 'package:info_dom/widgets/data_display_icon.dart';

class PersonalWidget extends StatelessWidget {
  final User user;
  const PersonalWidget({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Text(user.getName[0]),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              user.getName,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                data_display_icon(
                  icon: Icons.cake_outlined,
                  data: "12/12/2000",
                ),
                data_display_icon(
                  icon: Icons.access_time_outlined,
                  data: "89 ans",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
