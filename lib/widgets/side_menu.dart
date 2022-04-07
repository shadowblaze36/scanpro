import 'package:flutter/material.dart';
import 'package:scanpro/theme/app_theme.dart';

import '../router/app_routes.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const SizedBox(
            height: 110,
            child: _DrawerHeader(),
          ),
          ListView.separated(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, i) => ListTile(
                  title: Text(menuOptions[i].name),
                  leading: Icon(menuOptions[i].icon, color: AppTheme.primary),
                  onTap: () =>
                      Navigator.pushNamed(context, menuOptions[i].route)),
              separatorBuilder: (_, __) => const Divider(
                    height: 0,
                    thickness: 0,
                  ),
              itemCount: menuOptions.length),
          //TODO: Mejorar este expansion tile
          ExpansionTile(
            trailing: Icon(Icons.ac_unit),
            subtitle: Text('Hola'),
            backgroundColor: Colors.black54,
            iconColor: AppTheme.primary,
            textColor: AppTheme.primary,
            leading: Icon(Icons.settings_outlined),
            title: Text("WIP"),
            children: <Widget>[
              ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, i) => ListTile(
                      title: Text(menuOptions[i].name),
                      leading:
                          Icon(menuOptions[i].icon, color: AppTheme.primary),
                      onTap: () =>
                          Navigator.pushNamed(context, menuOptions[i].route)),
                  separatorBuilder: (_, __) => const Divider(
                        height: 0,
                        thickness: 0,
                      ),
                  itemCount: menuOptions.length),
            ],
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: AppTheme.primary,
            ),
            title: const Text(
              'Log out',
              style: TextStyle(color: AppTheme.primary),
            ),
            onTap: () => null,
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
    return DrawerHeader(
      margin: EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            height: 36,
            image: AssetImage(
              'assets/White_Tegra_CMYK.png',
            ),
            fit: BoxFit.scaleDown,
          ),
          Expanded(child: Container()),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3),
                    child: Text(
                      'Jorge Saravia',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  )
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.factory_rounded,
                    color: Colors.white,
                    size: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    child: Text(
                      'Arena',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
      decoration: const BoxDecoration(
        color: AppTheme.primary,
      ),
    );
  }
}
