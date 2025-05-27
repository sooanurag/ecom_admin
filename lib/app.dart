import 'package:ecom_admin/core/bindings/app_bindings.dart';
import 'package:ecom_admin/core/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ecom_admin',
      // theme-related
      themeMode: ThemeMode.light,
      // routing-releated
      getPages: AppPages.routes,
      initialRoute: AppRoutes.INITIAL,
      unknownRoute: AppPages.unknownRoute,
      navigatorObservers: [RouteObserver()],
      defaultTransition: Transition.noTransition,
      // others
      initialBinding: AppBindings(),
      debugShowCheckedModeBanner: false,
    );
  }
}