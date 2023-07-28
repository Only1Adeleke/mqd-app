import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Title text style
  static get titleSmallDeeppurple40001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple40001,
      );
  static get titleMediumPink40002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink40002,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumPink40005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink40005,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmall15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
      );
  static get titleMediumDeeppurple300SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple300,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSkModernistBold =>
      theme.textTheme.titleMedium!.skModernist.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSkModernist =>
      theme.textTheme.titleMedium!.skModernist.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSemiBold16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeYellow600 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow600,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallSkModernistPinkA200 =>
      theme.textTheme.titleSmall!.skModernist.copyWith(
        color: appTheme.pinkA200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumSemiBold_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumPink300ab => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.pink300Ab,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleSmallDeeppurple200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple200,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumDeeppurple300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurple300,
      );
  static get titleMediumYellow600SemiBold_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSkModernistPinkA200 =>
      theme.textTheme.titleMedium!.skModernist.copyWith(
        color: appTheme.pinkA200,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumPrimarySemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallDeeppurpleA100 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA100.withOpacity(0.67),
      );
  static get titleSmallDeeppurpleA100_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurpleA100,
      );
  static get titleMediumYellow600SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumYellow600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.yellow600,
      );
  static get titleLargeLatoWhiteA700 =>
      theme.textTheme.titleLarge!.lato.copyWith(
        color: appTheme.whiteA700,
        fontSize: getFontSize(
          21,
        ),
      );
  static get titleMediumWhiteA700_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.6),
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleSmallGray200 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray200,
      );
  static get titleSmallSkModernistPinkA200Bold =>
      theme.textTheme.titleSmall!.skModernist.copyWith(
        color: appTheme.pinkA200,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.67),
        fontWeight: FontWeight.w600,
      );
  // Body style
  static get bodyMediumSkModernist_1 => theme.textTheme.bodyMedium!.skModernist;
  static get bodyMediumDeeppurple40001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepPurple40001,
      );
  static get bodyMediumSkModernist => theme.textTheme.bodyMedium!.skModernist;
  static get bodyLarge18 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          18,
        ),
      );
  static get bodyMediumSkModernistPinkA200 =>
      theme.textTheme.bodyMedium!.skModernist.copyWith(
        color: appTheme.pinkA200,
      );
  static get bodyLargeSkModernistPinkA200 =>
      theme.textTheme.bodyLarge!.skModernist.copyWith(
        color: appTheme.pinkA200,
      );
  static get bodySmallSkModernistBlack90005 =>
      theme.textTheme.bodySmall!.skModernist.copyWith(
        color: appTheme.black90005,
      );
  // Headline text style
  static get headlineLarge30 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: getFontSize(
          30,
        ),
      );
  static get headlineSmallPrimary => theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get headlineSmallSkModernistWhiteA700 =>
      theme.textTheme.headlineSmall!.skModernist.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  // Display text style
  static get displayMediumBold => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeSkModernist =>
      theme.textTheme.labelLarge!.skModernist.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSkModernistPinkA200 =>
      theme.textTheme.labelLarge!.skModernist.copyWith(
        color: appTheme.pinkA200,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.49),
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700.withOpacity(0.46),
      );
}

extension on TextStyle {
  TextStyle get lato {
    return copyWith(
      fontFamily: 'Lato',
    );
  }

  TextStyle get lexend {
    return copyWith(
      fontFamily: 'Lexend',
    );
  }

  TextStyle get skModernist {
    return copyWith(
      fontFamily: 'Sk-Modernist',
    );
  }
}
