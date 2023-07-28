import 'bloc/subscription_opting_message_bloc.dart';
import 'models/subscription_opting_message_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:mqd_v1/widgets/custom_elevated_button.dart';

class SubscriptionOptingMessageScreen extends StatelessWidget {
  const SubscriptionOptingMessageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<SubscriptionOptingMessageBloc>(
      create: (context) =>
          SubscriptionOptingMessageBloc(SubscriptionOptingMessageState(
        subscriptionOptingMessageModelObj: SubscriptionOptingMessageModel(),
      ))
            ..add(SubscriptionOptingMessageInitialEvent()),
      child: SubscriptionOptingMessageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<SubscriptionOptingMessageBloc,
        SubscriptionOptingMessageState>(
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
              child: Container(
                height: getVerticalSize(
                  737,
                ),
                width: double.maxFinite,
                padding: getPadding(
                  top: 21,
                  bottom: 21,
                ),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        margin: getMargin(
                          bottom: 124,
                        ),
                        padding: getPadding(
                          top: 155,
                          bottom: 155,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup201,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgSettingsBlue700,
                              height: getVerticalSize(
                                83,
                              ),
                              width: getHorizontalSize(
                                90,
                              ),
                              margin: getMargin(
                                left: 29,
                                top: 176,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgIcon28x30,
                              height: getVerticalSize(
                                53,
                              ),
                              width: getHorizontalSize(
                                57,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  1,
                                ),
                              ),
                              margin: getMargin(
                                left: 39,
                                top: 90,
                                bottom: 115,
                              ),
                            ),
                            Spacer(),
                            CustomImageView(
                              imagePath: ImageConstant.imgLaptop,
                              height: getVerticalSize(
                                57,
                              ),
                              width: getHorizontalSize(
                                61,
                              ),
                              margin: getMargin(
                                top: 33,
                                bottom: 168,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          left: 23,
                          right: 25,
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: AppDecoration.txtOutline,
                              child: Text(
                                "lbl_hello_user".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.displayMedium!.copyWith(
                                  letterSpacing: getHorizontalSize(
                                    0.45,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(
                                326,
                              ),
                              margin: getMargin(
                                top: 16,
                              ),
                              child: Text(
                                "msg_to_continue_with".tr,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleMedium!.copyWith(
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
            ),
            bottomNavigationBar: CustomElevatedButton(
              width: getHorizontalSize(
                212,
              ),
              height: getVerticalSize(
                65,
              ),
              text: "lbl_view_plans".tr,
              margin: getMargin(
                left: 81,
                right: 82,
                bottom: 10,
              ),
              buttonStyle:
                  CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001,
              decoration: CustomButtonStyles
                  .gradientnameprimarynamedeeppurpleA20001Decoration,
              buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1,
            ),
          ),
        );
      },
    );
  }
}
