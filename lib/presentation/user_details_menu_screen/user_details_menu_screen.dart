import 'bloc/user_details_menu_bloc.dart';
import 'models/user_details_menu_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class UserDetailsMenuScreen extends StatelessWidget {
  const UserDetailsMenuScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<UserDetailsMenuBloc>(
      create: (context) => UserDetailsMenuBloc(UserDetailsMenuState(
        userDetailsMenuModelObj: UserDetailsMenuModel(),
      ))
        ..add(UserDetailsMenuInitialEvent()),
      child: UserDetailsMenuScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<UserDetailsMenuBloc, UserDetailsMenuState>(
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
                        top: 26,
                        bottom: 26,
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
                              top: 30,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgVideocamera,
                                  height: getVerticalSize(
                                    11,
                                  ),
                                  width: getHorizontalSize(
                                    16,
                                  ),
                                  margin: getMargin(
                                    bottom: 13,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 32,
                                    top: 2,
                                  ),
                                  child: Text(
                                    "msg_start_video_calling".tr,
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
                              540,
                            ),
                            width: getHorizontalSize(
                              245,
                            ),
                            margin: getMargin(
                              left: 12,
                              top: 24,
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 76,
                                      right: 6,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
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
                                      left: 13,
                                      top: 23,
                                    ),
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          svgPath: ImageConstant.imgFavorite,
                                          height: getVerticalSize(
                                            14,
                                          ),
                                          width: getHorizontalSize(
                                            17,
                                          ),
                                          margin: getMargin(
                                            top: 5,
                                            bottom: 3,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 18,
                                          ),
                                          child: Text(
                                            "msg_invite_on_a_date".tr,
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
                                      top: 141,
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
                                              top: 8,
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
                                      top: 204,
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
                                              top: 15,
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
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: getPadding(
                                      bottom: 215,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                              top: 20,
                                            ),
                                            child: Text(
                                              "lbl_search_chat".tr,
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
                                              top: 26,
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
                                              top: 33,
                                            ),
                                            child: Text(
                                              "lbl_block".tr,
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
                                            top: 42,
                                          ),
                                          child: Text(
                                            "lbl_report".tr,
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
                                  imagePath: ImageConstant.imgDividersWhiteA700,
                                  height: getVerticalSize(
                                    492,
                                  ),
                                  width: getHorizontalSize(
                                    224,
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
