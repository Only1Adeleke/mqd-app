import '../models/listaddicon_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:mqd_v1/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListaddiconItemWidget extends StatelessWidget {
  ListaddiconItemWidget(
    this.listaddiconItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListaddiconItemModel listaddiconItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getHorizontalSize(
        60,
      ),
      child: CustomIconButton(
        height: 60,
        width: 60,
        padding: getPadding(
          all: 20,
        ),
        decoration: IconButtonStyleHelper.outlineGray90001TL30,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup1849,
        ),
      ),
    );
  }
}
