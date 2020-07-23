import 'package:flutter/material.dart';
import 'package:fruit_diseases/constants.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/product/products_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fruit Diseases',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        accentColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        dividerTheme: DividerThemeData(
            space: 30,
            color: Colors.grey,
            indent: 90,
            endIndent: 90,
        )
      ),
      home: ProductScreen(),
    );
  }
}
