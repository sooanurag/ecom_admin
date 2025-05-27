
import 'package:ecom_admin/core/common/widgets/layouts/bars/app_nav_rail/app_nav_rail_controller.dart';
import 'package:ecom_admin/core/utils/constants/enums/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

class RouteObserver extends GetObserver{

  @override
  void didPush(Route route, Route? previousRoute) {
    // TODO: implement didPush
    super.didPush(route, previousRoute);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    // NavRail-related ------
    final appNavRailController = Get.find<AppNavRailController>();
    if(appNavRailController.isNavRailRoute(previousRoute?.settings.name)){
      appNavRailController.jumpTo(NavRailDestination.fromRouteName(previousRoute?.settings.name)!.index);
    }
    
    super.didPop(route, previousRoute);
  }
}