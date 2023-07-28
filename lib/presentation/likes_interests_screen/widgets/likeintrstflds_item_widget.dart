import '../models/likeintrstflds_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore: must_be_immutable
class LikeintrstfldsItemWidget extends StatelessWidget {
  LikeintrstfldsItemWidget(
    this.likeintrstfldsItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  LikeintrstfldsItemModel likeintrstfldsItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        right: 22,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        likeintrstfldsItemModelObj.phtogrphyTxt,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: likeintrstfldsItemModelObj.isSelected
              ? appTheme.whiteA700
              : appTheme.deepPurpleA100,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Lexend',
          fontWeight: FontWeight.w500,
        ),
      ),
      avatar: CustomImageView(
        svgPath: ImageConstant.imgCamera,
        height: getVerticalSize(
          14,
        ),
        width: getHorizontalSize(
          15,
        ),
        margin: getMargin(
          right: 8,
        ),
      ),
      selected: likeintrstfldsItemModelObj.isSelected,
      backgroundColor: theme.colorScheme.primaryContainer,
      selectedColor: appTheme.black90003,
      shape: likeintrstfldsItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  27,
                ),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  27,
                ),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
