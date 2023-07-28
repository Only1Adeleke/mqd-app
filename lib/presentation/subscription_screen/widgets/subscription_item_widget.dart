import '../models/subscription_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

// ignore: must_be_immutable
class SubscriptionItemWidget extends StatelessWidget {
  SubscriptionItemWidget(
    this.subscriptionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SubscriptionItemModel subscriptionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline8.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder43,
      ),
      child: OutlineGradientButton(
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
            44,
          ),
          topRight: Radius.circular(
            44,
          ),
          bottomLeft: Radius.circular(
            44,
          ),
          bottomRight: Radius.circular(
            44,
          ),
        ),
        child: Padding(
          padding: getPadding(
            left: 28,
            top: 22,
            right: 28,
            bottom: 22,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIcon32x33,
                height: getVerticalSize(
                  32,
                ),
                width: getHorizontalSize(
                  33,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    1,
                  ),
                ),
                margin: getMargin(
                  top: 3,
                  bottom: 7,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        subscriptionItemModelObj.plannameTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.titleLargeWhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.2,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 1,
                        ),
                        child: Text(
                          subscriptionItemModelObj.durationTxt,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.titleSmallDeeppurple40001
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      left: 76,
                      top: 10,
                      bottom: 9,
                    ),
                    child: Text(
                      subscriptionItemModelObj.priceTxt,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumYellow600.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
