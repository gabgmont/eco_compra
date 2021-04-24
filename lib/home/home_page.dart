import 'package:eco_compra/core/eco_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widgets/feed_widget.dart';
import 'widgets/news_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            gradient: EcoTheme.linearGradient,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FeedWidget(),
            SizedBox(
              height: screenHeight * 0.020,
            ),
            Expanded(
              child: GridView.count(
                mainAxisSpacing: screenHeight * 0.010,
                crossAxisSpacing: screenHeight * 0.010,
                crossAxisCount: 2,
                children: [
                  NewsWidget(),
                  NewsWidget(),
                  NewsWidget(),
                  NewsWidget(),
                  NewsWidget(),
                  NewsWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
