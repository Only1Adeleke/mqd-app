import '../models/profile_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:mqd_v1/widgets/custom_text_form_field.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class ProfileOneItemWidget extends StatelessWidget {
  ProfileOneItemWidget(
    this.profileOneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileOneItemModel profileOneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: getHorizontalSize(
          2,
        ),
        top: getVerticalSize(
          2,
        ),
        right: getHorizontalSize(
          2,
        ),
        bottom: getVerticalSize(
          2,
        ),
      ),
      strokeWidth: getHorizontalSize(
        2,
      ),
      gradient: LinearGradient(
        begin: Alignment(
          0.09,
          1,
        ),
        end: Alignment(
          0.94,
          1,
        ),
        colors: [
          appTheme.pink40001,
          appTheme.deepPurpleA200,
        ],
      ),
      corners: Corners(
        topLeft: Radius.circular(
          27,
        ),
        topRight: Radius.circular(
          27,
        ),
        bottomLeft: Radius.circular(
          27,
        ),
        bottomRight: Radius.circular(
          27,
        ),
      ),
      child: CustomTextFormField(
        width: getHorizontalSize(
          158,
        ),
        controller: profileOneItemModelObj.cookController,
        contentPadding: getPadding(
          top: 18,
          right: 30,
          bottom: 18,
        ),
        textStyle: CustomTextStyles.titleSmallGray200,
        hintText: "lbl_cooking".tr,
        hintStyle: CustomTextStyles.titleSmallGray200,
        textInputAction: TextInputAction.next,
        prefix: Container(
          margin: getMargin(
            left: 21,
            top: 18,
            right: 2,
            bottom: 18,
          ),
          child: CustomImageView(
            svgPath: ImageConstant.imgTrashWhiteA700,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: getVerticalSize(
            54,
          ),
        ),
        filled: true,
        fillColor: appTheme.black90003,
      ),
    );
  }
}
