import 'bloc/users_bloc.dart';
import 'models/users_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UsersPage extends StatefulWidget {
  const UsersPage({Key? key})
      : super(
          key: key,
        );

  @override
  UsersPageState createState() => UsersPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UsersBloc>(
      create: (context) => UsersBloc(UsersState(
        usersModelObj: UsersModel(),
      ))
        ..add(UsersInitialEvent()),
      child: UsersPage(),
    );
  }
}

class UsersPageState extends State<UsersPage>
    with AutomaticKeepAliveClientMixin<UsersPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
              width: mediaQueryData.size.width,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 5,
                        top: 24,
                        right: 6,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.blueGray90001,
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: appTheme.whiteA700,
                                    width: getHorizontalSize(
                                      1,
                                    ),
                                  ),
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    198,
                                  ),
                                  width: getHorizontalSize(
                                    172,
                                  ),
                                  decoration: AppDecoration.outline4.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            126,
                                          ),
                                          width: getHorizontalSize(
                                            172,
                                          ),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment(
                                                0.5,
                                                0.04,
                                              ),
                                              end: Alignment(
                                                0.5,
                                                0.89,
                                              ),
                                              colors: [
                                                appTheme.gray9000001,
                                                appTheme.gray900E0,
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 15,
                                            right: 11,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                height: getSize(
                                                  15,
                                                ),
                                                width: getSize(
                                                  15,
                                                ),
                                                margin: getMargin(
                                                  right: 2,
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      7,
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
                                              Container(
                                                height: getVerticalSize(
                                                  51,
                                                ),
                                                width: getHorizontalSize(
                                                  146,
                                                ),
                                                margin: getMargin(
                                                  top: 106,
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "msg_belle_benson_28"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: CustomTextStyles
                                                                .titleSmallSemiBold,
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 3,
                                                            ),
                                                            child: Text(
                                                              "lbl_1_5_km_away"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge!
                                                                  .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                  0.12,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCameraWhiteA700,
                                                            height:
                                                                getVerticalSize(
                                                              8,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              9,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .centerRight,
                                                            child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 28,
                                                              ),
                                                              child: Text(
                                                                "lbl_35".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge!
                                                                    .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                    0.12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: AppDecoration.outline4.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10,
                                ),
                                child: Container(
                                  height: getVerticalSize(
                                    126,
                                  ),
                                  width: getHorizontalSize(
                                    172,
                                  ),
                                  margin: getMargin(
                                    top: 72,
                                  ),
                                  padding: getPadding(
                                    left: 11,
                                    top: 13,
                                    right: 11,
                                    bottom: 13,
                                  ),
                                  decoration: AppDecoration
                                      .gradientnamegray9000001namegray900e0,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Padding(
                                          padding: getPadding(
                                            left: 3,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_ruby_diaz_33".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 3,
                                                ),
                                                child: Text(
                                                  "lbl_1_2_km_away".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCameraWhiteA700,
                                              height: getVerticalSize(
                                                8,
                                              ),
                                              width: getHorizontalSize(
                                                9,
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                padding: getPadding(
                                                  top: 27,
                                                ),
                                                child: Text(
                                                  "lbl_81".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: getPadding(
                              top: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: appTheme.blueGray90001,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: appTheme.whiteA700,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      198,
                                    ),
                                    width: getHorizontalSize(
                                      172,
                                    ),
                                    decoration: AppDecoration.outline4.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: getVerticalSize(
                                              126,
                                            ),
                                            width: getHorizontalSize(
                                              172,
                                            ),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(
                                                  0.5,
                                                  0.04,
                                                ),
                                                end: Alignment(
                                                  0.5,
                                                  0.89,
                                                ),
                                                colors: [
                                                  appTheme.gray9000001,
                                                  appTheme.gray900E0,
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 15,
                                              right: 10,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: getSize(
                                                    15,
                                                  ),
                                                  width: getSize(
                                                    15,
                                                  ),
                                                  margin: getMargin(
                                                    right: 3,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        7,
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
                                                Container(
                                                  height: getVerticalSize(
                                                    71,
                                                  ),
                                                  width: getHorizontalSize(
                                                    147,
                                                  ),
                                                  margin: getMargin(
                                                    top: 85,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "msg_myley_corbyn_23"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallSemiBold,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 2,
                                                              ),
                                                              child: Text(
                                                                "lbl_1_5_km_away"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: theme
                                                                    .textTheme
                                                                    .labelLarge!
                                                                    .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                    0.12,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCameraWhiteA700,
                                                              height:
                                                                  getVerticalSize(
                                                                8,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                9,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                  top: 48,
                                                                ),
                                                                child: Text(
                                                                  "lbl_49".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge!
                                                                      .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                      0.12,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: AppDecoration.outline4.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Container(
                                    margin: getMargin(
                                      top: 72,
                                    ),
                                    padding: getPadding(
                                      left: 11,
                                      top: 14,
                                      right: 11,
                                      bottom: 14,
                                    ),
                                    decoration: AppDecoration
                                        .gradientnamegray9000001namegray900e0,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 3,
                                            top: 61,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                "lbl_tony_z_25".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: CustomTextStyles
                                                    .titleSmallSemiBold,
                                              ),
                                              Padding(
                                                padding: getPadding(
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "lbl_2_km_away".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.12,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 7,
                                            top: 26,
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCameraWhiteA700,
                                                height: getVerticalSize(
                                                  8,
                                                ),
                                                width: getHorizontalSize(
                                                  9,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 48,
                                                  ),
                                                  child: Text(
                                                    "lbl_29".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.labelLarge!
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                        0.12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 22,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: AppDecoration.outline4.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      126,
                                    ),
                                    width: getHorizontalSize(
                                      172,
                                    ),
                                    margin: getMargin(
                                      top: 72,
                                    ),
                                    padding: getPadding(
                                      left: 11,
                                      top: 13,
                                      right: 11,
                                      bottom: 13,
                                    ),
                                    decoration: AppDecoration
                                        .gradientnamegray9000001namegray900e0,
                                    child: Stack(
                                      alignment: Alignment.bottomRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 3,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "msg_belle_benson_28".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .titleSmallSemiBold,
                                                ),
                                                Text(
                                                  "lbl_1_5_km_away".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: theme
                                                      .textTheme.labelLarge!
                                                      .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                      0.12,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.bottomRight,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgCameraWhiteA700,
                                                height: getVerticalSize(
                                                  8,
                                                ),
                                                width: getHorizontalSize(
                                                  9,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.centerRight,
                                                child: Padding(
                                                  padding: getPadding(
                                                    top: 67,
                                                  ),
                                                  child: Text(
                                                    "lbl_35".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.labelLarge!
                                                        .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                        0.12,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: appTheme.blueGray90001,
                                  shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: appTheme.whiteA700,
                                      width: getHorizontalSize(
                                        1,
                                      ),
                                    ),
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      198,
                                    ),
                                    width: getHorizontalSize(
                                      172,
                                    ),
                                    decoration: AppDecoration.outline4.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            height: getVerticalSize(
                                              126,
                                            ),
                                            width: getHorizontalSize(
                                              172,
                                            ),
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment(
                                                  0.5,
                                                  0.04,
                                                ),
                                                end: Alignment(
                                                  0.5,
                                                  0.89,
                                                ),
                                                colors: [
                                                  appTheme.gray9000001,
                                                  appTheme.gray900E0,
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: getPadding(
                                              left: 15,
                                              right: 11,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: getSize(
                                                    15,
                                                  ),
                                                  width: getSize(
                                                    15,
                                                  ),
                                                  margin: getMargin(
                                                    right: 2,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        7,
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
                                                Container(
                                                  height: getVerticalSize(
                                                    92,
                                                  ),
                                                  width: getHorizontalSize(
                                                    146,
                                                  ),
                                                  margin: getMargin(
                                                    top: 65,
                                                  ),
                                                  child: Stack(
                                                    alignment:
                                                        Alignment.centerRight,
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .bottomLeft,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "msg_belle_benson_28"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: CustomTextStyles
                                                                  .titleSmallSemiBold,
                                                            ),
                                                            Text(
                                                              "lbl_1_5_km_away"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: theme
                                                                  .textTheme
                                                                  .labelLarge!
                                                                  .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                  0.12,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment: Alignment
                                                            .centerRight,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                              svgPath: ImageConstant
                                                                  .imgCameraWhiteA700,
                                                              height:
                                                                  getVerticalSize(
                                                                8,
                                                              ),
                                                              width:
                                                                  getHorizontalSize(
                                                                9,
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                padding:
                                                                    getPadding(
                                                                  top: 67,
                                                                ),
                                                                child: Text(
                                                                  "lbl_35".tr,
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style: theme
                                                                      .textTheme
                                                                      .labelLarge!
                                                                      .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                      0.12,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
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
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
