import 'package:ecommerce_app/views/fournisseur.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:photo_view/photo_view.dart';

import '../model/constant.dart';
import 'boxWidget.dart';

class Descriptions extends StatefulWidget {
  final int product;
  const Descriptions({Key? key, required this.product}) : super(key: key);

  @override
  State<Descriptions> createState() => _DescriptionsState();
}

class _DescriptionsState extends State<Descriptions> {
  List<ScareBoxCat> listeOfBox = ScareBoxCat.listeOfScareBoxCat;
  var showProps = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Constants.myBlack,
        body: Container(
          margin: const EdgeInsets.only(top: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    var x = hideProperties(showProps);
                    showProps = x;
                  });
                },
                child: Container(
                    height: size.height * .94,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        filterQuality: FilterQuality.low,
                        image: AssetImage(listeOfBox[widget.product].image),
                      ),
                    ),
                    child: showProps == true
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Constants.myBlack.withOpacity(.65)),
                                child: Container(
                                  width: size.width,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios_new_rounded,
                                            color: Constants.myWhite,
                                          )),
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              PageTransition(
                                                  child: const Fournisseur(),
                                                  type: PageTransitionType
                                                      .rightToLeft));
                                        },
                                        child: Row(children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                border: Border.all(
                                                    color: Constants.myWhite,
                                                    width: 1)),
                                            child: const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              backgroundImage: ExactAssetImage(
                                                  'assets/images/myprofile.jpg'),
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            listeOfBox[widget.product]
                                                .nameOfFournisseur,
                                            style: TextStyle(
                                                color: Constants.myWhite,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ]),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: size.width,
                                padding: const EdgeInsets.only(
                                    left: 10, right: 10, top: 6),
                                decoration: BoxDecoration(
                                    color: Constants.myBlack.withOpacity(.65)),
                                child: Column(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listeOfBox[widget.product].product,
                                          style: TextStyle(
                                              color: Constants.myWhite,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          listeOfBox[widget.product]
                                              .description,
                                          style: TextStyle(
                                            color: Constants.myWhite,
                                          ),
                                        ),
                                        const SizedBox(height: 9),
                                        Row(
                                          children: [
                                            Text(
                                              'Prix: ',
                                              style: TextStyle(
                                                  color: Constants.myWhite,
                                                  fontSize: 18),
                                            ),
                                            Text(
                                              '${listeOfBox[widget.product].prix} Ar',
                                              style: TextStyle(
                                                  color:
                                                      Constants.myOrangeLight,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        : PhotoView(
                            /* initialScale: PhotoViewComputedScale.contained * .6, */
                            minScale: PhotoViewComputedScale.contained * .99,
                            imageProvider:
                                AssetImage(listeOfBox[widget.product].image),
                          )),
              ),
            ],
          ),
        )
        /* 0344823855  */
        );
  }

  hideProperties(bool showProps) {
    return !showProps;
  }
}

class DescriptionsFourn extends StatefulWidget {
  final String avatar;
  const DescriptionsFourn({Key? key, required this.avatar}) : super(key: key);

  @override
  State<DescriptionsFourn> createState() => _DescriptionsFournState();
}

class _DescriptionsFournState extends State<DescriptionsFourn> {
  List<ScareBoxCat> listeOfBox = ScareBoxCat.listeOfScareBoxCat;
  var showProps = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Constants.myBlack,
        body: Container(
          margin: const EdgeInsets.only(top: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    var x = hideProperties(showProps);
                    showProps = x;
                  });
                },
                child: Container(
                    height: size.height * .94,
                    width: size.width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        filterQuality: FilterQuality.low,
                        image: AssetImage(widget.avatar),
                      ),
                    ),
                    child: showProps == true
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    color: Constants.myBlack.withOpacity(.65)),
                                child: Container(
                                  width: size.width,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 6, vertical: 7),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(
                                            Icons.arrow_back_ios_new_rounded,
                                            color: Constants.myWhite,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        : PhotoView(
                            /* initialScale: PhotoViewComputedScale.contained * .6, */
                            minScale: PhotoViewComputedScale.contained * .99,
                            imageProvider: AssetImage(widget.avatar),
                          )),
              ),
            ],
          ),
        )
        /* 0344823855  */
        );
  }

  hideProperties(bool showProps) {
    return !showProps;
  }
}
