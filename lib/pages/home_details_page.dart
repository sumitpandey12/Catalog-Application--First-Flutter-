import 'package:catalog_application1/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:catalog_application1/models/catalog.dart';

class HomeDetails extends StatelessWidget {
  final Item catalog;
  const HomeDetails({
    Key? key,
    required this.catalog,
  })  : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH16,
          children: [
            "\$${catalog.price}".text.bold.red800.xl.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Add to cart".text.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(context.theme.buttonColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
            ).wh(130, 40)
          ],
        ).p16(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Container(child: Image.network(catalog.image))
                    .h32(context)),
            Expanded(
                child: VxArc(
                    height: 30,
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    child: Container(
                      height: context.screenHeight,
                      color: context.cardColor,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text
                              .color(context.theme.accentColor)
                              .xl4
                              .bold
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle)
                              .color(context.theme.accentColor)
                              .make(),
                          10.heightBox,
                          "Filler text is text that shares some characteristics of a real written text, but is random or otherwise generated. It may be used to display a sample of fonts, generate text for testing, or to spoof an e-mail spam filter"
                              .text
                              .textStyle(context.captionStyle)
                              .color(context.theme.accentColor)
                              .make()
                              .p24(),
                        ],
                      ).pOnly(top: 50.0),
                    ))),
          ],
        ),
      ),
    );
  }
}
