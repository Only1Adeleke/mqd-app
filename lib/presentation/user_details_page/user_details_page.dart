import 'bloc/user_details_bloc.dart';
import 'models/user_details_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UserDetailsPage extends StatefulWidget {
  const UserDetailsPage({Key? key})
      : super(
          key: key,
        );

  @override
  UserDetailsPageState createState() => UserDetailsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UserDetailsBloc>(
      create: (context) => UserDetailsBloc(UserDetailsState(
        userDetailsModelObj: UserDetailsModel(),
      ))
        ..add(UserDetailsInitialEvent()),
      child: UserDetailsPage(),
    );
  }
}

class UserDetailsPageState extends State<UserDetailsPage>
    with AutomaticKeepAliveClientMixin<UserDetailsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<UserDetailsBloc, UserDetailsState>(
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
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: getPadding(
                        left: 5,
                        top: 23,
                      ),
                      child: IntrinsicWidth(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImagesthumbs,
                              height: getVerticalSize(
                                90,
                              ),
                              width: getHorizontalSize(
                                367,
                              ),
                              margin: getMargin(
                                left: 3,
                              ),
                            ),
                            Container(
                              margin: getMargin(
                                left: 2,
                                top: 45,
                              ),
                              decoration: AppDecoration.txtOutline,
                              child: Text(
                                "lbl_interests".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleLargeWhiteA700
                                    .copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.2,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 16,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                    svgPath: ImageConstant.imgMusic,
                                    height: getVerticalSize(
                                      16,
                                    ),
                                    width: getHorizontalSize(
                                      19,
                                    ),
                                    margin: getMargin(
                                      top: 1,
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 13,
                                      bottom: 1,
                                    ),
                                    child: Text(
                                      "lbl_music".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallDeeppurpleA100_1,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgTrash,
                                    height: getVerticalSize(
                                      17,
                                    ),
                                    width: getHorizontalSize(
                                      15,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                      top: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_cooking".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallDeeppurpleA100_1,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgSignal,
                                    height: getVerticalSize(
                                      13,
                                    ),
                                    width: getHorizontalSize(
                                      15,
                                    ),
                                    margin: getMargin(
                                      left: 15,
                                      top: 4,
                                      bottom: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 9,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_swimming".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallDeeppurpleA100_1,
                                    ),
                                  ),
                                  CustomImageView(
                                    svgPath: ImageConstant.imgCursor,
                                    height: getVerticalSize(
                                      16,
                                    ),
                                    width: getHorizontalSize(
                                      15,
                                    ),
                                    margin: getMargin(
                                      left: 15,
                                      bottom: 2,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 3,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "lbl_travelling".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: CustomTextStyles
                                          .titleSmallDeeppurpleA100,
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
          ),
        );
      },
    );
  }
}
