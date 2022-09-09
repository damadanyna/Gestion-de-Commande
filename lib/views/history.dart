import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'HistoryPage',
        style: TextStyle(color: Constants.myWhite),
      ),
    );
  }
}
