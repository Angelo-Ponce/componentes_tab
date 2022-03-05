import 'package:componentes_tab/router/app_routes.dart';
import 'package:componentes_tab/themes/app_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      // onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      onGenerateRoute:AppRoutes.onGenerateRoute,
      theme: AppTheme.lightTheme
    );
  }
}
