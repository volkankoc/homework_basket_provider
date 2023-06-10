import 'package:flutter/material.dart';
import 'package:homework_basket_provider/config/theme/theme_light.dart';
import 'package:homework_basket_provider/modules/main/main_view.dart';
import 'package:homework_basket_provider/provider/basket_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<BasketProvider>(create: (context) => BasketProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: lightTheme,
      home: const MainView(),
    );
  }
}
