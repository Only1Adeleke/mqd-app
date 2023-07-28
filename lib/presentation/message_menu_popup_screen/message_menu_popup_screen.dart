import 'bloc/message_menu_popup_bloc.dart';
import 'models/message_menu_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class MessageMenuPopupScreen extends StatelessWidget {
  const MessageMenuPopupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageMenuPopupBloc>(
      create: (context) => MessageMenuPopupBloc(MessageMenuPopupState(
        messageMenuPopupModelObj: MessageMenuPopupModel(),
      ))
        ..add(MessageMenuPopupInitialEvent()),
      child: MessageMenuPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MessageMenuPopupBloc, MessageMenuPopupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
              width: mediaQueryData.size.width,
              height: mediaQueryData.size.height,
              decoration: BoxDecoration(
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
                    appTheme.gray90003,
                    appTheme.black900,
                  ],
                ),
              ),
              child: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Container(
                    decoration:
                        AppDecoration.gradientnamegray900e5nameonErrorContainer,
                    child: Container(
                      padding: getPadding(
                        top: 46,
                        bottom: 46,
                      ),
                      decoration: AppDecoration
                          .gradientnamepink70001namepurple700
                          .copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(
                              left: 13,
                              top: 8,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgUserWhiteA700,
                                  height: getVerticalSize(
                                    14,
                                  ),
                                  width: getHorizontalSize(
                                    12,
                                  ),
                                  margin: getMargin(
                                    bottom: 10,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 35,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "lbl_view_profile".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        theme.textTheme.titleMedium!.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              472,
                            ),
                            width: getHorizontalSize(
                              245,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 23,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 15,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                          svgPath:
                                              ImageConstant.imgMenuWhiteA700,
                                          height: getVerticalSize(
                                            12,
                                          ),
                                          width: getHorizontalSize(
                                            14,
                                          ),
                                          margin: getMargin(
                                            bottom: 17,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 34,
                                            top: 7,
                                          ),
                                          child: Text(
                                            "msg_archive_conversation".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 79,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant
                                              .imgTrashWhiteA70013x13,
                                          height: getSize(
                                            13,
                                          ),
                                          width: getSize(
                                            13,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 1,
                                            ),
                                            child: Text(
                                              "lbl_delete_chat".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 143,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgClose,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 8,
                                            ),
                                            child: Text(
                                              "lbl_clear_history".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgSearchWhiteA700,
                                        height: getSize(
                                          14,
                                        ),
                                        width: getSize(
                                          14,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 13,
                                          ),
                                          child: Text(
                                            "lbl_search_chat".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 1,
                                      bottom: 139,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgFolder,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 20,
                                            ),
                                            child: Text(
                                              "lbl_view_media".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 69,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgBlockicon,
                                          height: getSize(
                                            14,
                                          ),
                                          width: getSize(
                                            14,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 27,
                                            ),
                                            child: Text(
                                              "lbl_block_user".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(
                                                  0.18,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        svgPath: ImageConstant.imgGroup1853,
                                        height: getSize(
                                          14,
                                        ),
                                        width: getSize(
                                          14,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Padding(
                                          padding: getPadding(
                                            top: 35,
                                          ),
                                          child: Text(
                                            "lbl_report_user".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: theme.textTheme.titleMedium!
                                                .copyWith(
                                              letterSpacing: getHorizontalSize(
                                                0.18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgDividers,
                                  height: getVerticalSize(
                                    424,
                                  ),
                                  width: getHorizontalSize(
                                    231,
                                  ),
                                  alignment: Alignment.topRight,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
