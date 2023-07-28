import '../models/dating_matches_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore: must_be_immutable
class DatingMatchesItemWidget extends StatelessWidget {
  DatingMatchesItemWidget(
    this.datingMatchesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DatingMatchesItemModel datingMatchesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
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
            bottom: 3,
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
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                datingMatchesItemModelObj.nameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: CustomTextStyles.titleMediumSemiBold16,
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  datingMatchesItemModelObj.foundfrommatcheTxt,
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
                  top: 10,
                ),
                child: Text(
                  datingMatchesItemModelObj.priceTxt,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: CustomTextStyles.labelLargeWhiteA700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
