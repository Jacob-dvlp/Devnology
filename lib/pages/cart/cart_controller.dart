import 'package:get/get.dart';

import '../../model/model_produt.dart';

class CartController extends GetxController {
  var product = <ModelProdut>[].obs;
  double get totalPrice => product.fold(0, (sum, item) {
        return sum + item.price;
      });

  addProdutFromCart(ModelProdut produt) {
    product.add(produt);
    produt.count++;
    update();
  }

  removeProdutFromCart(ModelProdut model) {
    product.remove(model);
    model.count--;
    product.fold(0, (sub, item) => sub - item.price.toInt());
    if (model.count <= 0) {
      model.count = 0;
    }
    update();
  }
}
