import 'package:ecommerce/src/config/route.dart';
import 'package:ecommerce/src/pages/product_detail.dart';
import 'package:ecommerce/src/themes/theme.dart';
import 'package:ecommerce/src/wigets/general_routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Commerce",
      theme: AppTheme.lightTheme.copyWith(
        textTheme: GoogleFonts.muliTextTheme(
          Theme
              .of(context)
              .textTheme,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: Routes.getRoute(),
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[1].contains('detail')) {
          return GeneralRoutes<bool>(
              builder: (BuildContext context) => ProductDetailPage());
        };
      },
    );
  }
}
