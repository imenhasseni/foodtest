import 'dart:convert';
import 'Product.dart';
import 'package:http/http.dart' as http;

class ProductApi {
  static Future<List<Product>> getProduct() async {
    var uri = Uri.https('yummly2.p.rapidapi.com', '/feeds/list',
        {"limit": "18", "start": "0", "tag": "list.recipe.popular"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "d393fae443msh4e93c61e09ea510p163c86jsna648207d45c7",
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Product.productFromSnapshot(_temp);
  }
}