// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

import '../model/constant.dart';

class iconWidget extends StatelessWidget {
  final IconData icon;
  const iconWidget({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Constants.myOrange /* .withOpacity(.6) */,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(3.0),
      child: Icon(
        icon,
        color: Constants.myWhite,
        size: 18,
      ),
    );
  }
}
