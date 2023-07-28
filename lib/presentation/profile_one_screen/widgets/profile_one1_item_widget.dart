import '../models/profile_one1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore: must_be_immutable
class ProfileOne1ItemWidget extends StatelessWidget {
  ProfileOne1ItemWidget(
    this.profileOne1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProfileOne1ItemModel profileOne1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgPhoto190x142,
      height: getVerticalSize(
        190,
      ),
      width: getHorizontalSize(
        142,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          5,
        ),
      ),
    );
  }
}
