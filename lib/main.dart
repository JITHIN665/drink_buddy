import 'package:drink_buddy/infrastructure/Home/provider/counter_provider.dart';
import 'package:drink_buddy/modules/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:drink_buddy/modules/home/views/home_screen.dart';
import 'package:drink_buddy/themes/app_theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(context),
      title: 'Flutter Demo',
      home: const SplashScreen(),
    );
  }
}
