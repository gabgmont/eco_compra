import 'package:eco_compra/core/eco_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130),
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: EcoTheme.linearGradient,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: screenWidth,
                height: screenHeight * 0.125,
                decoration: BoxDecoration(
                  border: Border.fromBorderSide(BorderSide(color: EcoTheme.border)),
                    gradient: EcoTheme.linearGradient,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: screenHeight * 0.1,
                        height: screenHeight * 0.1,
                        decoration: BoxDecoration(
                          border: Border.fromBorderSide(BorderSide(color: EcoTheme.border)),
                          borderRadius: BorderRadius.circular(150),
                          gradient: EcoTheme.linearGradient2,
                        ),
                        child: Icon(
                          Icons.campaign_outlined,
                          size: screenHeight * 0.08,
                          color: EcoTheme.white,
                        ),
                      ),
                    ),
                    Container(
                      width: screenHeight * 0.08,
                      height: screenHeight * 0.1,

                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
