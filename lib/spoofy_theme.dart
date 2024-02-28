import 'package:flutter/material.dart';

class SpoofyColors {
  static const Color primaryColorDark = Color(0xFF7A0073);
  static const Color primaryColor = Color(0xFFE10098);
  static const Color primaryColorLight = Color(0xFFF469DB);

  static const Color secondaryColor = Color(0xFF00CCC5);
  static const Color secondaryColorLight = Color(0xFF7CE0D3);

  static const Color accentColor = Color(0xFFFFE900);

  static const Color surfaceColor = Color(0xFFF2E9DB);
  static const Color backgroundColor = Color(0xFF99FFE8);
}

class SpoofyTheme {
  static ThemeData mainTheme() {
    return ThemeData(
        textTheme: const TextTheme(
      titleLarge: TextStyle(
        height: 1.2,
        fontStyle: FontStyle.normal,
        fontSize: 90,
        fontFamily: 'Avenir Black',
        color: SpoofyColors.secondaryColorLight,
      ),

      // Estilos para AlbumCard
      labelLarge: TextStyle(
        fontSize: 30,
        height: 0.85,
        color: SpoofyColors.primaryColorDark,
        fontFamily: 'Avenir Black',
      ),
      labelMedium: TextStyle(
          fontSize: 20,
          color: SpoofyColors.primaryColorDark,
          fontFamily: 'Avenir Heavy'),
      labelSmall: TextStyle(
          fontSize: 16.0,
          color: SpoofyColors.primaryColorDark,
          fontFamily: 'Avenir Regular'),

          // Estilos para AlbumDetail
          headlineLarge: TextStyle(
            fontSize: 36,
            color: SpoofyColors.primaryColorDark,
            fontFamily: 'Avenir Black',
            height: 1.5
          ),
          headlineMedium: TextStyle(
            fontSize: 25,
            color: SpoofyColors.primaryColorDark,
            fontFamily: 'Avenir Heavy'
          ),
          headlineSmall: TextStyle(
            fontSize: 24,
            color: SpoofyColors.primaryColorDark,
            fontFamily: 'Avenir Roman'
          ),
          // Estilos para Playing
          displayLarge: TextStyle(

              fontSize: 36,
              color: SpoofyColors.secondaryColorLight,
              fontFamily: 'Avenir Heavy',
              height: 1.5
          ),
          displayMedium: TextStyle(
              fontSize: 25,
              color: SpoofyColors.secondaryColorLight,
              fontFamily: 'Avenir Heavy'
          ),

    ));
  }
}
