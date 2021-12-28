import 'package:e_commerce_app/core/view-model/home_view_model.dart';
import 'package:get/get.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
  }
}
