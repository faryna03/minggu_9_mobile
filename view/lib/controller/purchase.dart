import 'package:get/get.dart';
import 'package:view/model/product.dart';

import '';

class Purchase extends GetxController {
  var products = <Product>[].obs;
  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));

    var serverResponse = [
      Product(1, "produk demo", "aby",
          "Ini adalah produk demo kami yaitu bertemakan anime", 300.0),
      Product(1, "produk demo", "aby",
          "Ini adalah produk demo kami yaitu bertemakan anime", 300.0),
      Product(1, "produk demo", "aby",
          "Ini adalah produk demo kami yaitu bertemakan anime", 300.0),
      Product(1, "produk demo", "aby",
          "Ini adalah produk demo kami yaitu bertemakan anime", 300.0),
      Product(1, "produk demo", "aby",
          "Ini adalah produk demo kami yaitu bertemakan anime", 300.0),
      Product(1, "produk demo", "aby",
          "Ini adalah produk demo kami yaitu bertemakan anime", 300.0),
    ];

    products.value = serverResponse;
  }
}
