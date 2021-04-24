import 'file:///C:/Users/gabgm/IdeaProjects/eco_compra/lib/core/eco_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: EcoTheme.linearGradient,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    image: DecorationImage(
                        image: AssetImage('assets/images/EcoLogo.png'))),
                // child: Image.asset('assets/images/EcoLogo.png'),
              ),
              SizedBox(height: 14),
              Text('Eco Compra',
                style: GoogleFonts.pressStart2p(
                  color: EcoTheme.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
