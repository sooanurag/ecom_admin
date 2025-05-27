import 'package:ecom_admin/core/utils/constants/enums/app_enums.dart';
import 'package:get/get.dart';

class AppNavRailController extends GetxController {
  final activeIndex = 0.obs;
  final hoverIndex = Rx<int?>(null);

  bool isActive(int index) => activeIndex.value == index;
  bool isHovering(int index) => hoverIndex.value == index;
  bool isNavRailRoute(String? routeName) => NavRailDestination.values.any((des) => des.routeName == routeName);

  void jumpTo(int index) {
    if (isActive(index)) return;

    activeIndex.value = index;
    if (ScreenSize.of(Get.context!).isMobile) Get.back(); // close-drawer
    // routing-related
    Get.toNamed(NavRailDestination.values[index].routeName);
  }

  void onHover(int index) {
    if (!isActive(index)) hoverIndex.value = index;
    // TODO: onHover
  }
}


