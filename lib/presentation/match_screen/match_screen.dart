import 'bloc/match_bloc.dart';
import 'models/match_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:mqd_v1/widgets/custom_icon_button.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MatchBloc>(
      create: (context) => MatchBloc(MatchState(
        matchModelObj: MatchModel(),
      ))
        ..add(MatchInitialEvent()),
      child: MatchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<MatchBloc, MatchState>(
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getVerticalSize(
                        550,
                      ),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 23,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              height: getVerticalSize(
                                135,
                              ),
                              width: getHorizontalSize(
                                245,
                              ),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                      width: getHorizontalSize(
                                        222,
                                      ),
                                      decoration: AppDecoration.txtOutline,
                                      child: Text(
                                        "lbl_congrats".tr,
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.displayMedium!
                                            .copyWith(
                                          letterSpacing: getHorizontalSize(
                                            0.45,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: SizedBox(
                                      width: getHorizontalSize(
                                        245,
                                      ),
                                      child: Text(
                                        "msg_it_s_a_match_belle".tr,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
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
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.maxFinite,
                              margin: getMargin(
                                top: 50,
                              ),
                              padding: getPadding(
                                left: 78,
                                top: 146,
                                right: 78,
                                bottom: 146,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup138,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      top: 18,
                                      bottom: 39,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgComputer,
                                              height: getVerticalSize(
                                                34,
                                              ),
                                              width: getHorizontalSize(
                                                27,
                                              ),
                                              margin: getMargin(
                                                bottom: 8,
                                              ),
                                            ),
                                            CustomIconButton(
                                              height: 37,
                                              width: 37,
                                              margin: getMargin(
                                                left: 23,
                                                top: 5,
                                              ),
                                              padding: getPadding(
                                                all: 6,
                                              ),
                                              decoration: IconButtonStyleHelper
                                                  .outlineGray90001TL18,
                                              child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLikeorng,
                                              ),
                                            ),
                                          ],
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgStrokebg,
                                          height: getSize(
                                            86,
                                          ),
                                          width: getSize(
                                            86,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              43,
                                            ),
                                          ),
                                          alignment: Alignment.centerRight,
                                          margin: getMargin(
                                            top: 20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      top: 49,
                                      right: 3,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgStrokebg86x86,
                                          height: getSize(
                                            86,
                                          ),
                                          width: getSize(
                                            86,
                                          ),
                                          radius: BorderRadius.circular(
                                            getHorizontalSize(
                                              43,
                                            ),
                                          ),
                                          margin: getMargin(
                                            right: 9,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgLoves,
                                                height: getVerticalSize(
                                                  49,
                                                ),
                                                width: getHorizontalSize(
                                                  64,
                                                ),
                                                margin: getMargin(
                                                  bottom: 14,
                                                ),
                                              ),
                                              CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgCheckmark,
                                                height: getVerticalSize(
                                                  47,
                                                ),
                                                width: getHorizontalSize(
                                                  35,
                                                ),
                                                margin: getMargin(
                                                  left: 17,
                                                  top: 16,
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
                    Padding(
                      padding: getPadding(
                        top: 44,
                      ),
                      child: Text(
                        "lbl_keep_dating".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.headlineSmallPrimary.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.24,
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
