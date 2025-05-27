import 'package:ecom_admin/core/common/widgets/layouts/bars/app_nav_rail/app_nav_rail_controller.dart';
import 'package:ecom_admin/core/utils/constants/colors.dart';
import 'package:ecom_admin/core/utils/constants/enums/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

class AppNavRail extends GetView<AppNavRailController> {
  const AppNavRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => NavigationRail(
        selectedIndex: controller.activeIndex.value,
        onDestinationSelected: controller.jumpTo,
        extended:
            ScreenSize.of(context).isDesktop ||
            ScreenSize.of(context).isMobile,
        destinations:
            NavRailDestination.values
                .map(
                  (des) => NavigationRailDestination(
                    icon: Icon(des.icon),
                    label: Text(des.label),
                  ),
                )
                .toList(),
        backgroundColor: AppColors.secondary,
      ),
    );
  }
}
