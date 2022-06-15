import 'package:catalog_application1/models/catalog.dart';

class CartModel{

  late CatalogModel _catalog;

  // here we store ids of cart items
  final List<int> _itemIds = [];

  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newcatalog){
    assert(newcatalog!=null);
    _catalog=newcatalog;
  }

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice => items.fold(0, (previousValue, element) => previousValue+element.price);
  
  // add items into list
  void add(Item item){
    _itemIds.add(item.id);
  }

  //remove items from list

  void remove(Item item){
    _itemIds.remove(item.id);
  }
}