import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/material.dart';

class StorePage extends StatefulWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'StorePage',
        style: TextStyle(color: Constants.myWhite),
      ),
    );
  }
}
