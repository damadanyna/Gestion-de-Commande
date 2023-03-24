import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../components/iconWidget.dart';
import '../model/constant.dart';

class Classement extends StatefulWidget {
  const Classement({Key? key}) : super(key: key);

  @override
  State<Classement> createState() => _ClassementState();
}

class _ClassementState extends State<Classement> {
  List<String> listMenu = [
    'Tout',
    'Cuisine',
    'Bureau',
    'Gadget',
    'Informatique',
    'Decoration'
  ];
  bool showSearch = true;
  int selecteIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
              mainAxisAlignment: showSearch == false
                  ? MainAxisAlignment.center
                  : MainAxisAlignment.end,
              children: [
                showSearch == true
                    ? Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        width: size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              listMenu[selecteIndex],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 20),
                            ),
                            GestureDetector(
                                onTap: () {
                                  setState(() {
                                    bool x = changeSearch(showSearch);
                                    showSearch = x;
                                  });
                                },
                                child: const iconWidget(icon: Icons.search)),
                          ],
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: Constants.myGrey.withOpacity(.5),
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
                                child: const iconWidget(icon: Icons.close)),
                          ],
                        ),
                      )
              ]),
          const SizedBox(height: 6),
          SizedBox(
            height: 25,
            child: ListView.builder(
                itemCount: listMenu.length,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemBuilder: ((BuildContext context, int index) {
                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            selecteIndex = index;
                          });
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 4),
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                              color: selecteIndex == index
                                  ? Constants.myOrange
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                  color: selecteIndex == index
                                      ? Constants.myOrange
                                      : Constants.myGreyLight.withOpacity(.8))),
                          child: Text(
                            listMenu[index],
                            style: TextStyle(
                                color: selecteIndex == index
                                    ? Constants.myWhite
                                    : Constants.myGreyLight.withOpacity(.8),
                                fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  );
                })),
          ),
          Expanded(
              child: ListView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            dragStartBehavior: DragStartBehavior.down,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                height: 40,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '24 Sept 2022',
                          style: TextStyle(
                              fontSize: 12,
                              color: Constants.myGreyLight.withOpacity(.6)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        /* Text('Image'),
                        Text('Description'), */
                      ],
                    ),
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}

bool changeSearch(bool showSearch) {
  return !showSearch;
}
