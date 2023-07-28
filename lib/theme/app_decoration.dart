import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.black90005,
      );
  static BoxDecoration get txtFill => BoxDecoration(
        color: appTheme.pink40003,
      );
  static BoxDecoration get outline10 => BoxDecoration(
        color: appTheme.gray90006,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            2,
          ),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get gradientnamegray80075namegray90075 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.25,
            -0.25,
          ),
          end: Alignment(
            0.9,
            1.45,
          ),
          colors: [
            appTheme.gray80075,
            appTheme.gray90075,
          ],
        ),
      );
  static BoxDecoration get txtOutline => BoxDecoration();
  static BoxDecoration get gradientnamebluegray90075namegray9007501 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.25,
            -0.25,
          ),
          end: Alignment(
            0.9,
            1.45,
          ),
          colors: [
            appTheme.blueGray90075,
            appTheme.gray9007501,
          ],
        ),
      );
  static BoxDecoration get gradientnamewhiteA700namewhiteA700opacity0 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.whiteA700,
            appTheme.whiteA700.withOpacity(0),
          ],
        ),
      );
  static BoxDecoration get gradientnamegray900e5nameonErrorContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.gray900E5,
            theme.colorScheme.onErrorContainer,
          ],
        ),
      );
  static BoxDecoration get outline => BoxDecoration();
  static BoxDecoration get gradientnamegray9000001nameblack90001 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.04,
          ),
          end: Alignment(
            0.5,
            0.89,
          ),
          colors: [
            appTheme.gray9000001,
            appTheme.black90001,
          ],
        ),
      );
  static BoxDecoration get gradientnamegray90009nameblack90005 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.gray90009,
            appTheme.black90005,
          ],
        ),
      );
  static BoxDecoration get outline2 => BoxDecoration(
        color: appTheme.black90003,
      );
  static BoxDecoration get gradientnamepink70001namepurple700 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.27,
            -0.33,
          ),
          end: Alignment(
            0.62,
            1.14,
          ),
          colors: [
            appTheme.pink70001,
            appTheme.purple700,
          ],
        ),
      );
  static BoxDecoration get outline1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.gray90000,
            appTheme.black90000,
          ],
        ),
      );
  static BoxDecoration get gradientnamesecondaryContainernameerrorContainer =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.25,
            -0.25,
          ),
          end: Alignment(
            0.9,
            1.45,
          ),
          colors: [
            theme.colorScheme.secondaryContainer,
            theme.colorScheme.errorContainer,
          ],
        ),
      );
  static BoxDecoration get outline4 => BoxDecoration(
        color: appTheme.blueGray90001,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outline3 => BoxDecoration(
        color: appTheme.black90003,
      );
  static BoxDecoration get gradientnameprimarynamedeeppurpleA20001 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.24,
            0,
          ),
          end: Alignment(
            1,
            1.72,
          ),
          colors: [
            theme.colorScheme.primary,
            appTheme.deepPurpleA20001,
          ],
        ),
      );
  static BoxDecoration get fill1 => BoxDecoration(
        color: appTheme.blueGray900,
      );
  static BoxDecoration get outline6 => BoxDecoration(
        color: appTheme.gray400,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            2,
          ),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get outline5 => BoxDecoration(
        color: appTheme.deepPurple600,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            1,
          ),
          strokeAlign: strokeAlignOutside,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blueGray90026,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              2,
              2,
            ),
          ),
        ],
      );
  static BoxDecoration get gradientnamegray900f2namegray900f9 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.65,
            -0.29,
          ),
          end: Alignment(
            0.65,
            0.92,
          ),
          colors: [
            appTheme.gray900F2,
            appTheme.gray900F9,
          ],
        ),
      );
  static BoxDecoration get outline8 => BoxDecoration(
        color: appTheme.gray90006,
      );
  static BoxDecoration get fill3 => BoxDecoration(
        color: appTheme.whiteA700,
      );
  static BoxDecoration get outline7 => BoxDecoration(
        color: appTheme.indigo90001,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            3,
          ),
          strokeAlign: strokeAlignOutside,
        ),
      );
  static BoxDecoration get fill2 => BoxDecoration(
        color: theme.colorScheme.onPrimary,
      );
  static BoxDecoration get gradientnamegray9000001namegray900e0 =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0.04,
          ),
          end: Alignment(
            0.5,
            0.89,
          ),
          colors: [
            appTheme.gray9000001,
            appTheme.gray900E0,
          ],
        ),
      );
  static BoxDecoration get txtOutline3 => BoxDecoration();
  static BoxDecoration get outline9 => BoxDecoration(
        color: appTheme.black90003,
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            3,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.purple40059,
            spreadRadius: getHorizontalSize(
              2,
            ),
            blurRadius: getHorizontalSize(
              2,
            ),
            offset: Offset(
              2,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutline2 => BoxDecoration();
  static BoxDecoration get txtOutline1 => BoxDecoration(
        color: appTheme.black90001,
        border: Border.all(
          color: appTheme.blueGray90003,
          width: getHorizontalSize(
            2,
          ),
        ),
      );
  static BoxDecoration get gradientnamegray90003nameblack900 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(
            0.5,
            0,
          ),
          end: Alignment(
            0.5,
            1,
          ),
          colors: [
            appTheme.gray90003,
            appTheme.black900,
          ],
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius customBorderBL15 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        15,
      ),
    ),
  );

  static BorderRadius customBorderTL30 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        30,
      ),
    ),
  );

  static BorderRadius txtCircleBorder28 = BorderRadius.circular(
    getHorizontalSize(
      28,
    ),
  );

  static BorderRadius customBorderTL35 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        35,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        35,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        35,
      ),
    ),
  );

  static BorderRadius customBorderBL40 = BorderRadius.only(
    bottomLeft: Radius.circular(
      getHorizontalSize(
        40,
      ),
    ),
  );

  static BorderRadius circleBorder173 = BorderRadius.circular(
    getHorizontalSize(
      173,
    ),
  );

  static BorderRadius txtCircleBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8,
    ),
  );

  static BorderRadius circleBorder27 = BorderRadius.circular(
    getHorizontalSize(
      27,
    ),
  );

  static BorderRadius customBorderBL400 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        133,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        133,
      ),
    ),
    bottomLeft: Radius.circular(
      getHorizontalSize(
        400,
      ),
    ),
    bottomRight: Radius.circular(
      getHorizontalSize(
        400,
      ),
    ),
  );

  static BorderRadius roundedBorder5 = BorderRadius.circular(
    getHorizontalSize(
      5,
    ),
  );

  static BorderRadius roundedBorder15 = BorderRadius.circular(
    getHorizontalSize(
      15,
    ),
  );

  static BorderRadius roundedBorder37 = BorderRadius.circular(
    getHorizontalSize(
      37,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20,
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );

  static BorderRadius roundedBorder126 = BorderRadius.circular(
    getHorizontalSize(
      126,
    ),
  );

  static BorderRadius roundedBorder33 = BorderRadius.circular(
    getHorizontalSize(
      33,
    ),
  );

  static BorderRadius circleBorder43 = BorderRadius.circular(
    getHorizontalSize(
      43,
    ),
  );

  static BorderRadius roundedBorder1 = BorderRadius.circular(
    getHorizontalSize(
      1,
    ),
  );

  static BorderRadius roundedBorder30 = BorderRadius.circular(
    getHorizontalSize(
      30,
    ),
  );

  static BorderRadius roundedBorder62 = BorderRadius.circular(
    getHorizontalSize(
      62,
    ),
  );
}

// Comment/Uncomment the below code based on your Flutter SDK version.
    
// For Flutter SDK Version 3.7.2 or greater.
    
double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
    