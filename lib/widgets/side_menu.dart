import 'package:flutter/material.dart';
import 'package:scanpro/screens/screens.dart';
import 'package:scanpro/theme/app_theme.dart';

import '../router/app_routes.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text('Jorge Saravia'),
            accountEmail: Text('jorge.saravia@tegraglobal.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image(
                  image: AssetImage('assets/Red_T_CMYK.png'),
                  fit: BoxFit.fitHeight,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/TEGRA_Wallpaper.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: DrawerHeader(
        margin: const EdgeInsets.symmetric(vertical: 0),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          color: AppTheme.primary,
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppTheme.primary,
            image: DecorationImage(
              image: AssetImage('assets/White_Tegra_CMYK.png'),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
