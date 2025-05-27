import 'package:flutter/widgets.dart';
import 'package:get/route_manager.dart';

class AppRoutesMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route) {
    debugPrint('------MIDDLEWARE---------');
    return super.redirect(route);
  }
}