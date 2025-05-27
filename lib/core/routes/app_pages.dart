import 'package:ecom_admin/core/common/widgets/layouts/templates/site_template.dart';
import 'package:ecom_admin/core/routes/route_middleware.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

part 'app_routes.dart';

abstract class AppPages{
  AppPages._();

  static GetPage<dynamic> get unknownRoute => GetPage(name: _Path.UNKNOWN, page: () => Center(child: Text('Page not found'),),);

  static final List<GetPage<dynamic>> routes = [
    GetPage(name: _Path.INITIAL, page: () => SiteTemplate(), middlewares: [AppRoutesMiddleware()]),
  ];
}