import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              32,
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: appTheme.whiteA700,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
            ),
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(appTheme.redA200),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.46),
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            32,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w600,
        ),
        headlineMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            45,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w600,
        ),
        labelSmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            9,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            20,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.whiteA700.withOpacity(0.67),
          fontSize: getFontSize(
            24,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: getFontSize(
            36,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w600,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    background: Color(0XFF1A1041),
    error: Color(0XFF16032A),
    errorContainer: Color(0X75452994),
    inversePrimary: Color(0XFF1A1041),
    inverseSurface: Color(0XFF16032A),
    onBackground: Color(0X33F27C3A),
    onError: Color(0X75A837D0),
    onErrorContainer: Color(0XE0050014),
    onInverseSurface: Color(0X75A837D0),
    onPrimary: Color(0XFF16032A),
    onPrimaryContainer: Color(0X33F27C3A),
    onSecondary: Color(0X33F27C3A),
    onSecondaryContainer: Color(0XFF16032A),
    onSurface: Color(0X33F27C3A),
    onSurfaceVariant: Color(0XFF16032A),
    onTertiary: Color(0X33F27C3A),
    onTertiaryContainer: Color(0XFF16032A),
    outline: Color(0XFF16032A),
    outlineVariant: Color(0XFF1A1041),
    primary: Color(0XFFDD3562),
    primaryContainer: Color(0XFF1A1041),
    scrim: Color(0XFF1A1041),
    secondary: Color(0XFF1A1041),
    secondaryContainer: Color(0X75A837D0),
    shadow: Color(0XFF16032A),
    surface: Color(0XFF1A1041),
    surfaceTint: Color(0XFF16032A),
    surfaceVariant: Color(0X75A837D0),
    tertiary: Color(0XFF1A1041),
    tertiaryContainer: Color(0X75A837D0),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber700 => Color(0XFFFFA200);
  // Black
  Color get black900 => Color(0XFF00000D);
  Color get black90000 => Color(0X0006001A);
  Color get black90001 => Color(0XFF09011D);
  Color get black90002 => Color(0XFF09011E);
  Color get black90003 => Color(0XFF02000B);
  Color get black90004 => Color(0XFF03000C);
  Color get black90005 => Color(0XFF000000);
  Color get black90019 => Color(0X1904080D);
  Color get black900A2 => Color(0XA209001E);
  Color get black900A201 => Color(0XA2060118);
  // Blue
  Color get blue700 => Color(0XFF2080D8);
  Color get blue70044 => Color(0X442268CC);
  Color get blue900 => Color(0XFF1B3FC1);
  Color get blueA200 => Color(0XFF568CF5);
  Color get blueA400 => Color(0XFF2285F9);
  // BlueGray
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray700 => Color(0XFF4B3F7B);
  Color get blueGray900 => Color(0XFF20154C);
  Color get blueGray90001 => Color(0XFF1B1142);
  Color get blueGray90002 => Color(0XFF21154C);
  Color get blueGray90003 => Color(0XFF3F1444);
  Color get blueGray90026 => Color(0X26302756);
  Color get blueGray90075 => Color(0X751A1D4F);
  // DeepOrange
  Color get deepOrange400 => Color(0XFFF1873B);
  Color get deepOrangeA700 => Color(0XFFEA340C);
  // DeepPurple
  Color get deepPurple200 => Color(0XFFA591D8);
  Color get deepPurple300 => Color(0XFF8169DE);
  Color get deepPurple400 => Color(0XFF974EDC);
  Color get deepPurple40001 => Color(0XFF725ACC);
  Color get deepPurple600 => Color(0XFF612DA6);
  Color get deepPurple700 => Color(0XFF563790);
  Color get deepPurpleA100 => Color(0XFFB683EA);
  Color get deepPurpleA200 => Color(0XFF8A52F3);
  Color get deepPurpleA20001 => Color(0XFF8253FF);
  Color get deepPurpleA20002 => Color(0XFF9050E7);
  // Gray
  Color get gray200 => Color(0XFFE5E8EA);
  Color get gray20001 => Color(0XFFE8E6EA);
  Color get gray400 => Color(0XFFC4C4C4);
  Color get gray80075 => Color(0X754F1A40);
  Color get gray900 => Color(0XFF0E0223);
  Color get gray90000 => Color(0X00590C0C);
  Color get gray9000001 => Color(0X00110030);
  Color get gray90001 => Color(0XFF31131A);
  Color get gray90002 => Color(0XFF11002D);
  Color get gray90003 => Color(0XFF130034);
  Color get gray90004 => Color(0XFF1E1728);
  Color get gray90005 => Color(0XFF1F004B);
  Color get gray90006 => Color(0XFF140133);
  Color get gray90007 => Color(0XFF14012C);
  Color get gray90008 => Color(0XFF1F014B);
  Color get gray90009 => Color(0XFF140034);
  Color get gray90010 => Color(0XFF570A2C);
  Color get gray90075 => Color(0X753A052B);
  Color get gray9007501 => Color(0X75441C10);
  // GrayE
  Color get gray900E0 => Color(0XE00E0024);
  Color get gray900E5 => Color(0XE5130033);
  // GrayF
  Color get gray900F2 => Color(0XF2140033);
  Color get gray900F9 => Color(0XF9150129);
  // Green
  Color get green400 => Color(0XFF51D16D);
  Color get greenA400 => Color(0XFF0FDF6F);
  Color get greenA40001 => Color(0XFF34F07F);
  Color get greenA40033 => Color(0X333AF26E);
  Color get greenA700 => Color(0XFF12D13C);
  // Indigo
  Color get indigo600 => Color(0XFF3127CC);
  Color get indigo900 => Color(0XFF28005C);
  Color get indigo90001 => Color(0XFF251759);
  Color get indigo90002 => Color(0XFF2D1C70);
  Color get indigo90003 => Color(0XFF2A1B63);
  Color get indigo90004 => Color(0XFF241759);
  // LightGreen
  Color get lightGreenA200 => Color(0XFFBFFF6E);
  // Orange
  Color get orange200 => Color(0XFFFFBB7D);
  // Pink
  Color get pink200 => Color(0XFFFFA8B7);
  Color get pink400 => Color(0XFFF64A68);
  Color get pink40001 => Color(0XFFC53E8D);
  Color get pink40002 => Color(0XFFEF396A);
  Color get pink40003 => Color(0XFFD6386F);
  Color get pink40004 => Color(0XFFF74A69);
  Color get pink40005 => Color(0XFFF44363);
  Color get pink40006 => Color(0XFFD7386D);
  Color get pink700 => Color(0XFFBD3459);
  Color get pink70001 => Color(0XFFC8234F);
  Color get pink70026 => Color(0X26C41B44);
  Color get pinkA100 => Color(0XFFFF7D94);
  Color get pinkA200 => Color(0XFFFA457E);
  // PinkAb
  Color get pink300Ab => Color(0XABD9479E);
  // Purple
  Color get purple40059 => Color(0X599F4BCE);
  Color get purple700 => Color(0XFF7E1C95);
  Color get purple900 => Color(0XFF42207A);
  Color get purpleA200 => Color(0XFFEE35FF);
  // Red
  Color get red40033 => Color(0X33F23B55);
  Color get red500 => Color(0XFFEF5432);
  Color get red600 => Color(0XFFEF3249);
  Color get red700 => Color(0XFFE31D1C);
  Color get red70001 => Color(0XFFDD2140);
  Color get red900 => Color(0XFFB51623);
  Color get redA200 => Color(0XFFFF3A5D);
  // Teal
  Color get teal400 => Color(0XFF28BD87);
  Color get teal500 => Color(0XFF0FAA7B);
  // White
  Color get whiteA700 => Color(0XFFFFFFFF);
  // Yellow
  Color get yellow600 => Color(0XFFFFD235);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
