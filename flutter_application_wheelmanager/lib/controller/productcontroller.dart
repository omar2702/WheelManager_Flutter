import 'package:flutter_application_wheelmanager/Apis/product_api.dart';
import 'package:flutter_application_wheelmanager/models/product.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchServices();
    super.onInit();
  }

  void fetchServices() async {
    try {
      isLoading(true);
      var products = await ProductApi.getProducts();
      if (products != null) {
        productList.value = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
