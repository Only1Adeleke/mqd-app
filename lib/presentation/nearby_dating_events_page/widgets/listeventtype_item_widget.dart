import '../models/listeventtype_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore: must_be_immutable
class ListeventtypeItemWidget extends StatelessWidget {
  ListeventtypeItemWidget(
    this.listeventtypeItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListeventtypeItemModel listeventtypeItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline10.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder27,
      ),
      child: Container(
        width: getHorizontalSize(
          321,
        ),
        margin: getMargin(
          top: 30,
        ),
        padding: getPadding(
          left: 24,
          top: 2,
          right: 24,
          bottom: 2,
        ),
        decoration: AppDecoration.gradientnamegray9000001nameblack90001,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: getPadding(
                top: 110,
              ),
              child: Text(
                listeventtypeItemModelObj.eventtypeTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumSemiBold,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 6,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: ImageConstant.imgCalendar16x15,
                    height: getVerticalSize(
                      16,
                    ),
                    width: getHorizontalSize(
                      15,
                    ),
                    margin: getMargin(
                      bottom: 19,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 7,
                    ),
                    child: Text(
                      "lbl_9_may_2021".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgDateicon,
                    height: getVerticalSize(
                      14,
                    ),
                    width: getHorizontalSize(
                      12,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        6,
                      ),
                    ),
                    margin: getMargin(
                      left: 41,
                      top: 2,
                      bottom: 19,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 8,
                    ),
                    child: Text(
                      "lbl_10pm_01am".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
