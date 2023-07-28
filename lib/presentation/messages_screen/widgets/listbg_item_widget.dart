import '../models/listbg_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore: must_be_immutable
class ListbgItemWidget extends StatelessWidget {
  ListbgItemWidget(
    this.listbgItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListbgItemModel listbgItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: getPadding(
          all: 11,
        ),
        decoration:
            AppDecoration.gradientnamebluegray90075namegray9007501.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: getSize(
                60,
              ),
              width: getSize(
                60,
              ),
              margin: getMargin(
                top: 9,
                bottom: 8,
              ),
              decoration: BoxDecoration(
                color: appTheme.blueGray90002,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10,
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
            Container(
              height: getVerticalSize(
                71,
              ),
              width: getHorizontalSize(
                246,
              ),
              margin: getMargin(
                left: 16,
                top: 5,
              ),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: getSize(
                        16,
                      ),
                      padding: getPadding(
                        left: 5,
                        top: 1,
                        right: 5,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFill.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder8,
                      ),
                      child: Text(
                        listbgItemModelObj.persononeTxt,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.labelSmall!.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.09,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: getPadding(
                        right: 3,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                listbgItemModelObj.persontwoTxt,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMediumSemiBold16,
                              ),
                              Container(
                                height: getSize(
                                  10,
                                ),
                                width: getSize(
                                  10,
                                ),
                                margin: getMargin(
                                  left: 4,
                                  top: 5,
                                  bottom: 4,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      5,
                                    ),
                                  ),
                                  gradient: LinearGradient(
                                    begin: Alignment(
                                      0.35,
                                      0.3,
                                    ),
                                    end: Alignment(
                                      0.5,
                                      1,
                                    ),
                                    colors: [
                                      appTheme.lightGreenA200,
                                      appTheme.greenA700,
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  left: 79,
                                  top: 4,
                                ),
                                child: Text(
                                  listbgItemModelObj.timeTxt,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.labelLargeWhiteA700_1
                                      .copyWith(
                                    letterSpacing: getHorizontalSize(
                                      0.12,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Text(
                              listbgItemModelObj.conversationTxt,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleSmallDeeppurple200
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
