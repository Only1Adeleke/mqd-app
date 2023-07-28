import 'bloc/unmatch_bloc.dart';
import 'models/unmatch_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class UnmatchScreen extends StatelessWidget {
  const UnmatchScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<UnmatchBloc>(
      create: (context) => UnmatchBloc(UnmatchState(
        unmatchModelObj: UnmatchModel(),
      ))
        ..add(UnmatchInitialEvent()),
      child: UnmatchScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<UnmatchBloc, UnmatchState>(
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
                    SizedBox(
                      height: getVerticalSize(
                        620,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgCirclesbg,
                            height: getVerticalSize(
                              597,
                            ),
                            width: getHorizontalSize(
                              375,
                            ),
                            alignment: Alignment.topCenter,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 42,
                                right: 42,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    decoration: AppDecoration.txtOutline,
                                    child: Text(
                                      "lbl_be_patient".tr,
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
                                  Container(
                                    width: getHorizontalSize(
                                      290,
                                    ),
                                    margin: getMargin(
                                      top: 8,
                                    ),
                                    child: Text(
                                      "msg_don_t_loose_heart".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
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
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 18,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_start_swiping".tr,
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
