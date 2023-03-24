import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../components/description.dart';

class Apropos extends StatefulWidget {
  const Apropos({Key? key}) : super(key: key);
  @override
  State<Apropos> createState() => _AproposState();
}

class _AproposState extends State<Apropos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              child: const DescriptionsFourn(
                                  avatar: 'assets/images/myprofile.jpg'),
                              type: PageTransitionType.fade));
                    },
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Constants.myWhite, width: 1),
                      ),
                      child: const CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            ExactAssetImage('assets/images/myprofile.jpg'),
                      ),
                    ),
                  ),
                  Text(
                    'Fournisseur',
                    style: TextStyle(
                        fontSize: 20,
                        color: Constants.myGreyLight,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: [
                      const Text(
                        '2.3k',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Icon(
                        Icons.star,
                        color: Constants.myOrange,
                        size: 26,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Constants.myOrange,
                      borderRadius: BorderRadius.circular(30)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 23),
                  child: Text(
                    '128 Suivi(e)',
                    style: TextStyle(color: Constants.myWhite),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Constants.myGreyLight.withOpacity(.3)))),
              child: Row(
                children: [
                  Icon(
                    Icons.pin_drop_sharp,
                    color: Constants.myGreyLight.withOpacity(.5),
                    size: 31,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Siège social  ',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Apasambazaha/ Fianarantsoa / Madagascar',
                        style: TextStyle(
                            fontSize: 16,
                            color: Constants.myGreyLight.withOpacity(.8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Constants.myGreyLight.withOpacity(.3)))),
              child: Row(
                children: [
                  Icon(
                    Icons.groups_sharp,
                    color: Constants.myGreyLight.withOpacity(.5),
                    size: 31,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Membre depuis  ',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '19 Octobre 2000',
                        style: TextStyle(
                            fontSize: 16,
                            color: Constants.myGreyLight.withOpacity(.8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Constants.myGreyLight.withOpacity(.3)))),
              child: Row(
                children: [
                  Icon(
                    Icons.screenshot_monitor_rounded,
                    color: Constants.myGreyLight.withOpacity(.5),
                    size: 31,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Vues par ',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '4.6k personnes',
                        style: TextStyle(
                            fontSize: 16,
                            color: Constants.myGreyLight.withOpacity(.8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Constants.myGreyLight.withOpacity(.3)))),
              child: Row(
                children: [
                  Icon(
                    Icons.phone,
                    color: Constants.myGreyLight.withOpacity(.5),
                    size: 31,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Tel ',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '+261 34 94 591 28',
                        style: TextStyle(
                            fontSize: 16,
                            color: Constants.myGreyLight.withOpacity(.8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 19),
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                          width: 1,
                          color: Constants.myGreyLight.withOpacity(.3)))),
              child: Row(
                children: [
                  Icon(
                    Icons.email_outlined,
                    color: Constants.myGreyLight.withOpacity(.5),
                    size: 31,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'e-mail ',
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'damadanyna@gmail.com',
                        style: TextStyle(
                            fontSize: 16,
                            color: Constants.myGreyLight.withOpacity(.8)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
