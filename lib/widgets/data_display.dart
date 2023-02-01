import 'package:flutter/material.dart';

class data_display extends StatelessWidget {
  //icon and title are optional
  const data_display({
    Key? key,
    required this.data,
    required this.title,
  }) : super(key: key);

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
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
