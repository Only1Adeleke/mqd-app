import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.margin,
    this.width,
    this.height,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final double? width;

  final double? height;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          visualDensity: VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          iconSize: getSize(height ?? 0),
          padding: EdgeInsets.all(0),
          icon: Container(
            alignment: Alignment.center,
            width: getSize(width ?? 0),
            height: getSize(height ?? 0),
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      15.00,
                    ),
                  ),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineGray90001 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              3,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.green400,
            appTheme.teal400,
          ],
        ),
      );
  static BoxDecoration get outlineGray90001TL20 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.deepOrange400,
            appTheme.deepOrangeA700,
          ],
        ),
      );
  static BoxDecoration get outlineGray90001TL23 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              5,
              4,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.pink400,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get outlineGray90001TL201 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              9,
              6,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.pink400,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get gradientnameindigo900namegray90002 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            20.00,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(
            0.17,
            0,
          ),
          end: Alignment(
            0.86,
            1,
          ),
          colors: [
            appTheme.indigo900,
            appTheme.gray90002,
          ],
        ),
      );
  static BoxDecoration get outlineGreenA40033 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.greenA40033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.greenA40001,
            appTheme.teal500,
          ],
        ),
      );
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.orange200,
            appTheme.red500,
          ],
        ),
      );
  static BoxDecoration get outlineRed40033 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.red40033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.pinkA100,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get outlineBlue70044 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            27.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blue70044,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.blueA400,
            appTheme.blue900,
          ],
        ),
      );
  static BoxDecoration get outlineGray20001 => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.2),
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            15.00,
          ),
        ),
        border: Border.all(
          color: appTheme.gray20001,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray90001TL30 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            30.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              9,
              6,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.pink400,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get outlineGreenA40033TL22 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.greenA40033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.greenA40001,
            appTheme.teal500,
          ],
        ),
      );
  static BoxDecoration get outlineRed40033TL22 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            22.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.red40033,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              4,
              8,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.pinkA100,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get outlineGray90001TL18 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            18.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              7,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.deepOrange400,
            appTheme.deepOrangeA700,
          ],
        ),
      );
  static BoxDecoration get outlineGray90001TL17 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            17.00,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.gray90001,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              8,
              5,
            ),
          ),
        ],
        gradient: LinearGradient(
          begin: Alignment(
            0.4,
            0,
          ),
          end: Alignment(
            0.67,
            0,
          ),
          colors: [
            appTheme.pink400,
            appTheme.red600,
          ],
        ),
      );
  static BoxDecoration get outlineWhiteA700 => BoxDecoration(
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            32.00,
          ),
        ),
        border: Border.all(
          color: appTheme.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        ),
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
            appTheme.pink40004,
            appTheme.red900,
          ],
        ),
      );
}
