import 'dart:ui';
import 'package:mqd_v1/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillGray90004 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray90004,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            14,
          ),
        ),
      );
  static ButtonStyle get fillPinkA200 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.pinkA200.withOpacity(0.39),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
      );
  static ButtonStyle get fillRed70001 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.red70001,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            11,
          ),
        ),
      );
  static ButtonStyle get fillWhiteA700 => ElevatedButton.styleFrom(
        backgroundColor: appTheme.whiteA700.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            7,
          ),
        ),
      );
  // Gradientnameprimarynamedeeppurple button style
  static ButtonStyle get gradientnameprimarynamedeeppurpleA20001 =>
      ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            32,
          ),
        ),
      );
  static BoxDecoration get gradientnameprimarynamedeeppurpleA20001Decoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            0.06,
            0,
          ),
          end: Alignment(
            1.03,
            0,
          ),
          colors: [
            theme.colorScheme.primary,
            appTheme.deepPurpleA20001,
          ],
        ),
      );
  static ButtonStyle get gradientnameprimarynamedeeppurpleA20001TL15 =>
      ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      );
  static BoxDecoration
      get gradientnameprimarynamedeeppurpleA20001TL15Decoration =>
          BoxDecoration(
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                15.00,
              ),
            ),
            gradient: LinearGradient(
              begin: Alignment(
                0.06,
                0,
              ),
              end: Alignment(
                1.03,
                0,
              ),
              colors: [
                theme.colorScheme.primary,
                appTheme.deepPurpleA20001,
              ],
            ),
          );
  // Outline button style
  static ButtonStyle get outline => OutlinedButton.styleFrom(
        backgroundColor: appTheme.whiteA700,
        side: BorderSide(
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
      );
  static ButtonStyle get outlineTL27 => OutlinedButton.styleFrom(
        backgroundColor: appTheme.black90003,
        side: BorderSide(
          width: 2,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            27,
          ),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
