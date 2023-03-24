import 'package:ecommerce_app/views/fournisseurPage/apropos.dart';
import 'package:ecommerce_app/views/fournisseurPage/boutique.dart';
import 'package:ecommerce_app/views/fournisseurPage/classement.dart';
import 'package:flutter/material.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class Fournisseur extends StatefulWidget {
  const Fournisseur({Key? key}) : super(key: key);

  @override
  State<Fournisseur> createState() => _FournisseurState();
}

class _FournisseurState extends State<Fournisseur> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<String> menuList = ['TOP MODEL', 'BOUTIQUE', 'A PROPOS'];
    List<Widget> pageList = const [Boutique(), Classement(), Apropos()];
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                const Text(
                  'Fournisseur',
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(
              height: size.height * .896,
              width: size.width,
              child: TitleScrollNavigation(
                barStyle: const TitleNavigationBarStyle(
                  style: TextStyle(fontWeight: FontWeight.w500),
                  padding:
                      EdgeInsets.only(bottom: 12, left: 30, right: 30, top: 10),
                ),
                titles: menuList,
                pages: pageList,
              ),
            )
          ],
        ),
      ),
    );
  }
}
