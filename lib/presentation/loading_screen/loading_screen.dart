import 'bloc/loading_bloc.dart';
import 'models/loading_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LoadingBloc>(
      create: (context) => LoadingBloc(LoadingState(
        loadingModelObj: LoadingModel(),
      ))
        ..add(LoadingInitialEvent()),
      child: LoadingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoadingBloc, LoadingState>(
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
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgLoading,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                width: double.maxFinite,
                padding: getPadding(
                  left: 41,
                  top: 38,
                  right: 41,
                  bottom: 38,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgMqdlogo,
                      height: getVerticalSize(
                        266,
                      ),
                      width: getHorizontalSize(
                        268,
                      ),
                      radius: BorderRadius.only(
                        topLeft: Radius.circular(
                          getHorizontalSize(
                            133,
                          ),
                        ),
                        topRight: Radius.circular(
                          getHorizontalSize(
                            133,
                          ),
                        ),
                        bottomLeft: Radius.circular(
                          getHorizontalSize(
                            400,
                          ),
                        ),
                        bottomRight: Radius.circular(
                          getHorizontalSize(
                            400,
                          ),
                        ),
                      ),
                      margin: getMargin(
                        top: 183,
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: getPadding(
                        right: 46,
                      ),
                      child: Text(
                        "lbl_myqueerdate_com".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            CustomTextStyles.titleLargeLatoWhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.22,
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
