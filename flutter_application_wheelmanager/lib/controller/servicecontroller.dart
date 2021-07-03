import 'package:flutter_application_wheelmanager/Apis/service_api.dart';
import 'package:flutter_application_wheelmanager/models/service.dart';
import 'package:get/state_manager.dart';

class ServiceController extends GetxController {
  var isLoading = true.obs;
  var serviceList = <Service>[].obs;

  @override
  void onInit() {
    fetchServices();
    super.onInit();
  }

  void fetchServices() async {
    try {
      isLoading(true);
      var services = await ServiceApi.getServices();
      if (services != null) {
        serviceList.value = services;
      }
    } finally {
      isLoading(false);
    }
  }
}
