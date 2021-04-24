import 'package:eco_compra/core/criandowiget.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';
import 'splash/splash_page.dart';

void main() {
  runApp(MarketPlace());
}

class MainApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }

}
