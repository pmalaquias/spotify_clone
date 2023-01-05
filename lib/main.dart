import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'ui/pages/pages.dart';
import 'ui/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); //Must be called
  await windowManager.ensureInitialized(); //Must be called
  //waitUntilReadyToShow ==> Optional method to use, requires modification of native runner - Read docs of the package.
  await windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.setTitleBarStyle(TitleBarStyle.normal); //Hiding the titlebar

    await windowManager.setTitle('Spotify'); //We don't have a titlebar, this title appears in Task Manager for example.
    await windowManager.show(); //Finally show app window.
  });

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify Clone',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: darkColorScheme,
      ),
      home: const Home(),
    );
  }
}
