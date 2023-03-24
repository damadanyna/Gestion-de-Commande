import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../components/boxWidget.dart';
import '../components/description.dart';
import '../model/constant.dart';

class Boutique extends StatefulWidget {
  const Boutique({Key? key}) : super(key: key);

  @override
  State<Boutique> createState() => _BoutiqueState();
}

class _BoutiqueState extends State<Boutique> {
  List<ScareBoxCat> listeOfBox = ScareBoxCat.listeOfScareBoxCat;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Constants.myWhite, width: 1)),
                    child: const CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          ExactAssetImage('assets/images/myprofile.jpg'),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fournisseur',
                        style: TextStyle(
                            color: Constants.myBlack,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            '128 Suivis',
                            style: TextStyle(
                              color: Constants.myGreyLight,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Constants.myGreyLight,
                              fontSize: 13,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Row(
                            children: [
                              Text(
                                ' 2.3K',
                                style: TextStyle(
                                  color: Constants.myGreyLight,
                                  fontSize: 13,
                                ),
                              ),
                              Icon(
                                Icons.star,
                                color: Constants.myOrange,
                                size: 17,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 26, vertical: 4),
                  decoration: BoxDecoration(
                    color: Constants.myOrange,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Suivre',
                    style: TextStyle(color: Constants.myWhite),
                  ),
                )
              ],
            ),
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top des Produits',
                  style: TextStyle(
                      fontSize: 20,
                      color: Constants.myOrange,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Container(
              height: size.height * .66,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  dragStartBehavior: DragStartBehavior.start,
                  itemCount: listeOfBox.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 17,
                      crossAxisSpacing: 17),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                                child: Descriptions(product: index),
                                type: PageTransitionType.fade));
                      },
                      child: listeOfBox[index],
                    );
                  }
                  /* 0344297050 */
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
