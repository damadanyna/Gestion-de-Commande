// ignore_for_file: file_names

import 'package:ecommerce_app/views/catalogue.dart';
import 'package:ecommerce_app/views/components/iconWidget.dart';
import 'package:ecommerce_app/views/history.dart';
import 'package:ecommerce_app/views/home.dart';
import 'package:ecommerce_app/views/model/constant.dart';
import 'package:ecommerce_app/views/profile.dart';
import 'package:ecommerce_app/views/store.dart';
import 'package:flutter/material.dart';

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int indexTab = 0;
  List<String> tiles = [
    "Accueil",
    "Explorer",
    "Mes Produits",
    "Historique",
    "Mon Profile"
  ];
  List<Widget> pages = const [
    HomePage(),
    CataloguePage(),
    StorePage(),
    HistoryPage(),
    ProfilePage()
  ];
  bool showSearch = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: indexTab == 0 ? Constants.myOrange : Colors.grey,
                size: indexTab == 0 ? 28 : 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: indexTab == 1 ? Constants.myOrange : Colors.grey,
                size: indexTab == 1 ? 28 : 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shop_two_rounded,
                color: indexTab == 2 ? Constants.myOrange : Colors.grey,
                size: indexTab == 2 ? 28 : 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                color: indexTab == 3 ? Constants.myOrange : Colors.grey,
                size: indexTab == 3 ? 28 : 20,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: indexTab == 4 ? Constants.myOrange : Colors.grey,
                size: indexTab == 4 ? 28 : 20,
              ),
              label: ''),
        ],
        onTap: (index) {
          setState(() {
            indexTab = index;
          });
        },
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(children: [
          Column(
            children: [
              const SizedBox(height: 23),
              /* HEADER */
              Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: showSearch == true
                            ? [
                                Text(
                                  tiles[indexTab],
                                  style: TextStyle(
                                      fontSize: 24,
                                      color: Constants.myGrey.withOpacity(.5),
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            bool x = changeSearch(showSearch);
                                            showSearch = x;
                                          });
                                        },
                                        child: const iconWidget(
                                            icon: Icons.search)),
                                    const SizedBox(width: 7),
                                    const iconWidget(icon: Icons.notifications),
                                    const SizedBox(width: 7),
                                    const iconWidget(icon: Icons.shopping_cart),
                                  ],
                                )
                              ]
                            : [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          color:
                                              Constants.myGrey.withOpacity(.5),
                                          width: 1),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: size.width * .84,
                                        child: const TextField(
                                          decoration: InputDecoration(
                                              hintText: 'Recherche',
                                              icon: Icon(Icons.search),
                                              border: InputBorder.none),
                                        ),
                                      ),
                                      const SizedBox(width: 7),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              bool x = changeSearch(showSearch);
                                              showSearch = x;
                                            });
                                          },
                                          child: const iconWidget(
                                              icon: Icons.close)),
                                    ],
                                  ),
                                )
                              ]),
                  ),
                ],
              )
              /* BODY */
            ],
          ),
          Expanded(child: pages[indexTab])
        ]),
      ),
    );
  }

  bool changeSearch(bool showSearch) {
    return !showSearch;
  }
}
