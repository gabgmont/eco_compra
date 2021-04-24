import 'package:eco_compra/core/eco_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FeedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Center(
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
                  border:
                      Border.fromBorderSide(BorderSide(color: EcoTheme.border)),
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
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black45,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Novidade!',
                        style: GoogleFonts.rubik(
                            fontSize: 24, color: EcoTheme.white),
                      ),
                      Text(
                        'Agora temos cupons e brindes para serem resgatados na plataforma iFood!!',
                        style: GoogleFonts.rubik(
                            fontSize: 12, color: EcoTheme.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
