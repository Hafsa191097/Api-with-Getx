
import 'package:get/state_manager.dart';

import '../models/modellist.dart';
import '../services/remoteservices.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Images>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchproducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}