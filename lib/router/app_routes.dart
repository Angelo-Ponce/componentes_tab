import 'package:componentes_tab/models/models.dart';
import 'package:componentes_tab/screens/screens.dart';
import 'package:componentes_tab/widgets/widgets.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(route: 'home',icon: Icons.abc_rounded,name: 'Home',screen: const HomeScreen()),
    MenuOption(route: 'card', icon: Icons.ac_unit_outlined , name: 'Card', screen: const CardScreen()),
    MenuOption(route: 'listView',icon: Icons.abc_rounded,name: 'Listas',screen: const ListViewScreen()),
    MenuOption(route: 'alert', icon: Icons.add_alert, name: 'Alertas', screen: AlertScreen()),
    MenuOption(route: 'avatar', icon: Icons.supervised_user_circle_outlined, name: 'Circle Avatar', screen: AvatarScreen()),
    MenuOption(route: 'animated', icon: Icons.play_circle_outline_rounded, name: 'Animated Container', screen: AnimatedScreen()),
    MenuOption(route: 'inputs', icon: Icons.input, name: 'Inputs', screen: InputsScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (context) => option.screen});
    }
    return appRoutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => HomeScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
