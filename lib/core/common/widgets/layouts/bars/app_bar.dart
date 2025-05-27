


import 'package:ecom_admin/core/utils/constants/enums/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MAppBar({super.key, this.scaffoldKey});
  final GlobalKey<ScaffoldState>? scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      leading:
          ScreenSize.of(context).isMobile
              ? IconButton(
                onPressed: () {
                  //TODO: Appbar-leading-CTA
                  Scaffold.maybeOf(context)?.openDrawer();
                },
                icon: Icon(Iconsax.menu),
              )
              : null,
      title:
          ScreenSize.of(context).isDesktop
              ? TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Iconsax.search_normal),
                  constraints: BoxConstraints(maxWidth: 400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              )
              : null,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
