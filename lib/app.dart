import 'package:flutter/material.dart';
import 'package:task_manager/features/authentication/splash_screen.dart';


import 'utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TMAppTheme.lightTheme,
      darkTheme: TMAppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}