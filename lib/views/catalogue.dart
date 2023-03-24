import 'package:ecommerce_app/views/components/description.dart';
import 'package:ecommerce_app/views/model/constant.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'components/boxWidget.dart';

class CataloguePage extends StatefulWidget {
  const CataloguePage({Key? key}) : super(key: key);

  @override
  State<CataloguePage> createState() => _CataloguePageState();
}

class _CataloguePageState extends State<CataloguePage> {
  List<ScareBoxCat> listeOfBox = ScareBoxCat.listeOfScareBoxCat;
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
          height: size.height * .73,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GridView.builder(
              scrollDirection: Axis.vertical,
              dragStartBehavior: DragStartBehavior.start,
              itemCount: listeOfBox.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 17, crossAxisSpacing: 17),
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: Descriptions(
                              product: index,
                            ),
                            type: PageTransitionType.fade));
                  },
                  child: listeOfBox[index],
                );
              }
              /* 0344297050 */
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
