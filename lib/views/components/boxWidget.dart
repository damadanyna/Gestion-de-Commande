// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../model/constant.dart';

class RectBox extends StatelessWidget {
  const RectBox({
    Key? key,
    required this.size,
    required this.img,
  }) : super(key: key);

  final Size size;
  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * .3,
      width: size.width * .8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            img,
          ),
        ),
      ),
      child: Container(
        height: size.height * .3,
        width: size.width * .8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: Constants.myBlack.withOpacity(.4)),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'READY TO DELIVER TO YOUT HOME',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Constants.myWhite,
                  fontSize: 16),
            ),
            Container(
              margin: const EdgeInsets.only(top: 13),
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 4),
              decoration: BoxDecoration(
                color: Constants.myWhite.withOpacity(.3),
                border: Border(
                  top: BorderSide(color: Constants.myWhite),
                  bottom: BorderSide(color: Constants.myWhite),
                  left: BorderSide(color: Constants.myWhite),
                  right: BorderSide(color: Constants.myWhite),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                'START SHOPPING',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Constants.myWhite,
                    fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScareBoxCat extends StatelessWidget {
  const ScareBoxCat({
    Key? key,
    required this.nameOfFournisseur,
    required this.prix,
    required this.product,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String nameOfFournisseur;
  final int prix;
  final String product;
  final String image;
  final String description;

  static List<ScareBoxCat> listeOfScareBoxCat = const [
    ScareBoxCat(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_7.jpg'),
    ScareBoxCat(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_10.jpg'),
    ScareBoxCat(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_11.jpg'),
    ScareBoxCat(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_13.jpg'),
    ScareBoxCat(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_5.jpg'),
    ScareBoxCat(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_6.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .3,
      width: size.width * .45,
      decoration: BoxDecoration(
        color: Constants.myGrey.withOpacity(.4),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Constants.myGrey.withOpacity(.2)),
        image: DecorationImage(
          fit: BoxFit.cover,
          filterQuality: FilterQuality.low,
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * .1,
            decoration: BoxDecoration(
              color: Constants.myWhite,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7)),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getString23(product),
                    style: TextStyle(
                        color: Constants.myBackground.withOpacity(.5)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 1),
                            decoration: BoxDecoration(
                                color: Constants.myOrange,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              getinitial(nameOfFournisseur),
                              style: TextStyle(color: Constants.myWhite),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(getString7(nameOfFournisseur))
                        ],
                      ),
                      Text('$prix Ar',
                          style: TextStyle(
                              color: Constants.myOrange,
                              fontWeight: FontWeight.w700))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String getinitial(String name) {
    return name.substring(0, 1);
  }

  String getString7(String name) {
    if (name.length > 7) {
      return '${name.substring(0, 5)}...';
    }
    return name;
  }

  String getString23(String product) {
    if (product.length > 23) {
      return '${product.substring(0, 20)}...';
    }
    return product;
  }
}

class ScareBoxBoutique extends StatelessWidget {
  const ScareBoxBoutique({
    Key? key,
    required this.nameOfFournisseur,
    required this.prix,
    required this.product,
    required this.image,
    required this.description,
  }) : super(key: key);
  final String nameOfFournisseur;
  final int prix;
  final String product;
  final String image;
  final String description;

  static List<ScareBoxBoutique> listeOfScareBoxBoutique = const [
    ScareBoxBoutique(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_7.jpg'),
    ScareBoxBoutique(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_10.jpg'),
    ScareBoxBoutique(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_11.jpg'),
    ScareBoxBoutique(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_13.jpg'),
    ScareBoxBoutique(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_5.jpg'),
    ScareBoxBoutique(
        nameOfFournisseur: 'Name 1',
        prix: 30000,
        product: 'My Product',
        description: 'Ce ci est un déscription simple ou détaillé du produits',
        image: 'assets/imgComp/img_6.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .3,
      width: size.width * .45,
      decoration: BoxDecoration(
        color: Constants.myGrey.withOpacity(.4),
        borderRadius: BorderRadius.circular(7),
        border: Border.all(color: Constants.myGrey.withOpacity(.2)),
        image: DecorationImage(
          fit: BoxFit.cover,
          filterQuality: FilterQuality.low,
          image: AssetImage(
            image,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * .1,
            decoration: BoxDecoration(
              color: Constants.myWhite,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(7),
                  bottomRight: Radius.circular(7)),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    getString23(product),
                    style: TextStyle(
                        color: Constants.myBackground.withOpacity(.5)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 1),
                            decoration: BoxDecoration(
                                color: Constants.myOrange,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              getinitial(nameOfFournisseur),
                              style: TextStyle(color: Constants.myWhite),
                            ),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(getString7(nameOfFournisseur))
                        ],
                      ),
                      Text('$prix Ar',
                          style: TextStyle(
                              color: Constants.myOrange,
                              fontWeight: FontWeight.w700))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  String getinitial(String name) {
    return name.substring(0, 1);
  }

  String getString7(String name) {
    if (name.length > 7) {
      return '${name.substring(0, 5)}...';
    }
    return name;
  }

  String getString23(String product) {
    if (product.length > 23) {
      return '${product.substring(0, 20)}...';
    }
    return product;
  }
}

class LitleScare extends StatelessWidget {
  const LitleScare({
    Key? key,
    required this.text,
    required this.photos,
  }) : super(key: key);
  final String text;
  final String photos;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Constants.myBlack,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              photos,
            ),
          ),
        ),
        child: Center(
          child: Text(text,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w800)),
        ));
  }
}
