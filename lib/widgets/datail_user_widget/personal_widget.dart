import 'package:flutter/material.dart';
import 'package:info_dom/models/user.dart';
import 'package:info_dom/widgets/datail_user_widget/data_display_icon.dart';
import 'package:intl/intl.dart';

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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                user.getName,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  DataDisplayIcon(
                    icon: Icons.cake_outlined,
                    //get formatted date of birth dd/mm/yyyy
                    data: DateFormat('dd/MM/yyyy').format(user.getDateOfBirth),
                  ),
                  DataDisplayIcon(
                    icon: Icons.access_time_outlined,
                    // get age with the best precision
                    data: '${_calculateAge(user.getDateOfBirth)} ans',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  int _calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age;
  }
}
