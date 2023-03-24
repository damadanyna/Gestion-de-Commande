import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'components/boxWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Constants.myWhite),
          padding: const EdgeInsets.symmetric(horizontal: 7),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                dragStartBehavior: DragStartBehavior.start,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      RectBox(size: size, img: 'assets/images/img3.png'),
                      const SizedBox(width: 7),
                      RectBox(size: size, img: 'assets/images/img3.png'),
                      const SizedBox(width: 7),
                      RectBox(size: size, img: 'assets/images/img3.png'),
                      const SizedBox(width: 7),
                      RectBox(size: size, img: 'assets/images/img3.png'),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: size.height * .3,
                child: GridView(
                  scrollDirection: Axis.horizontal,
                  dragStartBehavior: DragStartBehavior.start,
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 99,
                      childAspectRatio: 10,
                      mainAxisExtent: 85.4,
                      mainAxisSpacing: 1,
                      crossAxisSpacing: 1),
                  children: const [
                    LitleScare(
                        photos: 'assets/images/rect28.png', text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_29.png',
                        text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_30.png',
                        text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_31.png',
                        text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_32.png',
                        text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_33.png',
                        text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_34.png',
                        text: 'texte'),
                    LitleScare(
                        photos: 'assets/images/Rectangle_35.png',
                        text: 'texte'),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'New Product',
                    style: TextStyle(
                        color: Constants.myGrey.withOpacity(.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Constants.myOrange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Constants.myWhite),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                dragStartBehavior: DragStartBehavior.start,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: const [
                      ScareBoxCat(
                          product: 'Chargeur',
                          nameOfFournisseur: 'Dany',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_4.jpg',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          image: 'assets/imgComp/img_2.jpg',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          image: 'assets/imgComp/img_3.jpg',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          image: 'assets/imgComp/img_5.jpg',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          image: 'assets/imgComp/img_6.jpg',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          prix: 20000),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Product',
                    style: TextStyle(
                        color: Constants.myGrey.withOpacity(.8),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Constants.myOrange,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'See All',
                      style: TextStyle(color: Constants.myWhite),
                    ),
                  )
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                dragStartBehavior: DragStartBehavior.start,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: const [
                      ScareBoxCat(
                          product: 'Chargeur',
                          nameOfFournisseur: 'Dany',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_7.jpg',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'PVC',
                          nameOfFournisseur: 'Malazatrading',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_8.jpg',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_9.jpg',
                          prix: 20000),
                      SizedBox(width: 10),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_10.jpg',
                          prix: 20000),
                      SizedBox(width: 11),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_11.jpg',
                          prix: 20000),
                      SizedBox(width: 12),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_12.jpg',
                          prix: 20000),
                      SizedBox(width: 13),
                      ScareBoxCat(
                          product: 'Cable Transert',
                          nameOfFournisseur: 'Angelot',
                          description:
                              'Ce ci est un déscription simple ou détaillé du produits',
                          image: 'assets/imgComp/img_13.jpg',
                          prix: 20000),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
