import 'dart:convert';

import 'package:catalog_application1/models/catalog.dart';
import 'package:catalog_application1/widgets/drawer.dart';
import 'package:catalog_application1/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodeJson = jsonDecode(catalogJson);
    var productData = decodeJson["products"];
    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
          ? GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                final item = CatalogModel.items[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridTile(
                      header: Text(item.name),
                      footer: Text(item.desc),
                      child: Padding(
                        padding: const EdgeInsets.all(36.0),
                        child: Image.network(item.image),
                      )),
                );
              },
              itemCount: CatalogModel.items.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: MyDrawer(),
    );
  }
}
