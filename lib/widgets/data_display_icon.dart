import 'package:flutter/material.dart';

class data_display_icon extends StatelessWidget {
  const data_display_icon({
    Key? key,
    required this.icon,
    required this.data,
  }) : super(key: key);

  final IconData icon;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
