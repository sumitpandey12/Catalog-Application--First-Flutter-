import 'package:catalog_application1/models/catalog.dart';
import 'package:catalog_application1/widgets/drawer.dart';
import 'package:catalog_application1/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
        itemCount: CatalogModel.items.length,
      ),
      drawer: MyDrawer(),
    );
  }
}
