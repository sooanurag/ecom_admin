import 'package:ecom_admin/core/common/widgets/layouts/bars/app_nav_rail/app_nav_rail_controller.dart';
import 'package:get/get.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(AppNavRailController(),permanent: true);
  }
}