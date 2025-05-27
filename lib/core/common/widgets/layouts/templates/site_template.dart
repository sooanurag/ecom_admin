import 'package:ecom_admin/core/common/widgets/layouts/bars/app_nav_rail/app_nav_rail.dart';
import 'package:ecom_admin/core/common/widgets/responsive/adaptive_layout_builder.dart';
import 'package:ecom_admin/core/common/widgets/layouts/bars/app_bar/app_bar.dart';
import 'package:ecom_admin/core/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SiteTemplate extends StatelessWidget {
  const SiteTemplate({super.key, this.desktop, this.mobile, this.tablet});
  final Widget? desktop;
  final Widget? mobile;
  final Widget? tablet;

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayoutBuilder(
      desktop: _DesktopSiteTemplate(desktop),
      tablet: _TabletSiteTemplate(tablet),
      mobile: _MobileSiteTemplate(mobile),
    );
  }
}

class _DesktopSiteTemplate extends StatelessWidget {
  const _DesktopSiteTemplate(this.body);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AppNavRail(),
          Expanded(
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MAppBar(),
                    Expanded(
                      child: body ??
                      ColoredBox(
                        color: AppColors.secondaryLight,
                        child: Center(child: Text('Under development')),
                      ),
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
    
  }
}

class _TabletSiteTemplate extends StatelessWidget {
  const _TabletSiteTemplate(this.body);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          AppNavRail(),
          Expanded(
            child:
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MAppBar(),
                    Expanded(
                      child: body ??
                      ColoredBox(
                        color: AppColors.secondaryLight,
                        child: Center(child: Text('Under development')),
                      ),
                    ),
                  ],
                ),
          ),
        ],
      ),
    );
  }
}

class _MobileSiteTemplate extends StatelessWidget {
  const _MobileSiteTemplate(this.body);
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MAppBar(),
      drawer: Drawer(
        child: AppNavRail(),
      ),
      body:
          body ??
          ColoredBox(
            color: AppColors.secondaryLight,
            child: Center(child: Text('Under development')),
          ),
    );
  }
}
