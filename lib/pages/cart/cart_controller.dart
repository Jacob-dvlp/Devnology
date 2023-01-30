import 'package:get/get.dart';

import '../../model/model_produt.dart';

class CartController extends GetxController {
  var product = <ModelProdut>[].obs;

  double get totalPrice => product.fold(0, (sum, item) {
        double value = double.parse(item.price.replaceRange(5, null, ""));
        return sum + value;
      });

  addProdut(ModelProdut produt) {
    product.add(produt);
  }

  removeProdut(int id) {
    product.removeWhere((element) => element.id == id);
  }
}
