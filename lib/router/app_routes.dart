import 'package:scanpro/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'Home Screen',
        screen: const HomeScreen(),
        icon: Icons.home),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
    MenuOption(
        route: 'settings',
        name: 'Settings',
        screen: const SettingsScreen(),
        icon: Icons.settings),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => const ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
  // };
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const HomeScreen());
  }
}
