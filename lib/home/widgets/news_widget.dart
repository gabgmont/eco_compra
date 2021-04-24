import 'package:eco_compra/core/eco_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenWidth * 0.4,
      width: screenWidth * 0.4,
      decoration: BoxDecoration(
        border: Border.fromBorderSide(BorderSide(color: EcoTheme.border)),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/imagem_noticia_1.jpg'),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(),
          Container(
            height: screenWidth * 0.20,
            width: double.maxFinite,
            color: Colors.black45,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: [
                  Align(
                    child: Text(
                      'Brasil é referência na reciclagem de latas de alumínio',
                      style: GoogleFonts.rubik(color: EcoTheme.white, fontSize: 12),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Spacer(),
                  Align(
                    child: Text(
                      'Fonte: https://veja.abril.com.br/',
                      style: GoogleFonts.rubik(color: EcoTheme.white, fontSize: 6),
                    ),
                    alignment: Alignment.bottomRight,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
