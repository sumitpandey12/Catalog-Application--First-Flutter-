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
        title: catalog.name.text.make(),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: Vx.mH16,
          children: [
            "\$${catalog.price}".text.bold.red800.xl.make(),
            ElevatedButton(
              onPressed: () {},
              child: "Buy".text.make(),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(MyTheme.darkBullishColor),
                  shape: MaterialStateProperty.all(StadiumBorder())),
            ).wh(100, 40)
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
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          catalog.name.text
                              .color(MyTheme.darkBullishColor)
                              .xl4
                              .bold
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle)
                              .make(),
                          10.heightBox,
                        ],
                      ).pOnly(top: 50.0),
                    ))),
          ],
        ),
      ),
    );
  }
}
