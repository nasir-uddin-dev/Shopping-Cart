import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/provider/cart_provider.dart';
import 'package:shopping_cart/provider/favorite_provider.dart';
import 'package:shopping_cart/provider/product_provider.dart';
import 'package:shopping_cart/screens/base.dart';

import 'common/route_generator.dart';
import 'common/routes.dart';
import 'common/theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
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
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      themeMode: ThemeMode.light,
      home: const Base(),
      initialRoute: Routes.base,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}