import 'bloc/profile_alternative_bloc.dart';
import 'models/profile_alternative_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileAlternativePage extends StatefulWidget {
  const ProfileAlternativePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileAlternativePageState createState() => ProfileAlternativePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileAlternativeBloc>(
      create: (context) => ProfileAlternativeBloc(ProfileAlternativeState(
        profileAlternativeModelObj: ProfileAlternativeModel(),
      ))
        ..add(ProfileAlternativeInitialEvent()),
      child: ProfileAlternativePage(),
    );
  }
}

class ProfileAlternativePageState extends State<ProfileAlternativePage>
    with AutomaticKeepAliveClientMixin<ProfileAlternativePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ProfileAlternativeBloc, ProfileAlternativeState>(
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: getPadding(
                          left: 26,
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
                                  344,
                                ),
                                margin: getMargin(
                                  left: 4,
                                ),
                              ),
                              Container(
                                margin: getMargin(
                                  left: 2,
                                  top: 34,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgMusic,
                                      height: getVerticalSize(
                                        16,
                                      ),
                                      width: getHorizontalSize(
                                        13,
                                      ),
                                      margin: getMargin(
                                        top: 1,
                                        bottom: 24,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        31,
                                      ),
                                      margin: getMargin(
                                        left: 10,
                                        bottom: 3,
                                      ),
                                      child: Text(
                                        "lbl_music".tr,
                                        maxLines: 2,
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
                                        left: 26,
                                        top: 1,
                                        bottom: 23,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        36,
                                      ),
                                      margin: getMargin(
                                        left: 7,
                                      ),
                                      child: Text(
                                        "lbl_cooking".tr,
                                        maxLines: 2,
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
                                        left: 36,
                                        top: 4,
                                        bottom: 24,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        50,
                                      ),
                                      margin: getMargin(
                                        left: 9,
                                      ),
                                      child: Text(
                                        "lbl_swimming".tr,
                                        maxLines: 2,
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
                                        left: 37,
                                        bottom: 25,
                                      ),
                                    ),
                                    Container(
                                      width: getHorizontalSize(
                                        59,
                                      ),
                                      margin: getMargin(
                                        left: 8,
                                      ),
                                      child: Text(
                                        "lbl_travelling".tr,
                                        maxLines: 2,
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
