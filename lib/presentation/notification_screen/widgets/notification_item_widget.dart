import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(
    this.notificationItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  NotificationItemModel notificationItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 1,
        right: 1,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: getSize(
              65,
            ),
            width: getSize(
              65,
            ),
            margin: getMargin(
              top: 2,
              bottom: 48,
            ),
            decoration: BoxDecoration(
              color: appTheme.indigo90002,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  32,
                ),
              ),
              border: Border.all(
                color: appTheme.whiteA700,
                width: getHorizontalSize(
                  2,
                ),
                strokeAlign: strokeAlignOutside,
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 19,
              bottom: 27,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  notificationItemModelObj.myleycorbynlikeTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.titleMediumSemiBold16,
                ),
                Padding(
                  padding: getPadding(
                    top: 6,
                  ),
                  child: Text(
                    notificationItemModelObj.himathewmyleyTxt,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.14,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 1,
                    top: 6,
                  ),
                  child: Text(
                    notificationItemModelObj.priceTxt,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.labelLargeWhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
