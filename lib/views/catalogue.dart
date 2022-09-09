import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'components/boxWidget.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 5),
          child: Row(
            children: const [
              SizedBox(width: 10),
              btnIconRadius(
                  ico: Icons.format_line_spacing_outlined, text: 'Triez Par'),
              SizedBox(width: 10),
              btnIconRadius(ico: Icons.location_on_outlined, text: 'Ville'),
              SizedBox(width: 10),
              btnIconRadius(ico: Icons.outbox, text: 'Categorie'),
            ],
          ),
        ),
        Container(
          height: size.height * .768,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView(
            scrollDirection: Axis.vertical,
            dragStartBehavior: DragStartBehavior.start,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 17, crossAxisSpacing: 17),
            children: const [
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_7.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_8.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_9.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_10.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Chargeur',
                  name: 'Dany',
                  image: 'assets/imgComp/img_4.jpg',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_2.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_3.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_5.jpg',
                  name: 'Angelot',
                  prix: 20000),
              ScareBoxCat(
                  product: 'Cable Transert',
                  image: 'assets/imgComp/img_6.jpg',
                  name: 'Angelot',
                  prix: 20000),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore: camel_case_types
class btnIconRadius extends StatelessWidget {
  const btnIconRadius({
    Key? key,
    required this.text,
    required this.ico,
  }) : super(key: key);
  final String text;
  final IconData ico;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        debugPrint(text);
      },
      child: Container(
        width: size.width * .27,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(color: Constants.myOrange.withOpacity(.9)),
            borderRadius: BorderRadius.circular(20),
            color: Constants.myOrange.withOpacity(.2)),
        child: Row(
          children: [
            Icon(
              ico,
              color: Constants.myOrange.withOpacity(.9),
              size: 18,
            ),
            Text(
              text,
              style: TextStyle(
                color: Constants.myOrange.withOpacity(.9),
              ),
            )
          ],
        ),
      ),
    );
  }
}
