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
            height: 95,
            child: _DrawerHeader(),
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Favorites'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Friends'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.description),
            title: Text('Policies'),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Image(
            height: 35,
            image: AssetImage(
              'assets/White_Tegra_CMYK.png',
            ),
            fit: BoxFit.scaleDown,
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.person_pin_rounded,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " Jorge Saravia",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
              RichText(
                text: const TextSpan(
                  children: [
                    WidgetSpan(
                      child: Icon(
                        Icons.factory,
                        size: 16,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(
                      text: " New Holland",
                      style: TextStyle(fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
      decoration: const BoxDecoration(
        color: AppTheme.primary,
      ),
    );
  }
}
