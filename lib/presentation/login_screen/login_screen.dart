import 'bloc/login_bloc.dart';import 'models/login_model.dart';import 'package:flutter/material.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/widgets/custom_elevated_button.dart';import 'package:mqd_v1/widgets/custom_icon_button.dart';import 'package:outline_gradient_button/outline_gradient_button.dart';import 'package:mqd_v1/domain/facebookauth/facebook_auth_helper.dart';import 'package:mqd_v1/domain/googleauth/google_auth_helper.dart';class LoginScreen extends StatelessWidget {const LoginScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LoginBloc>(create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))..add(LoginInitialEvent()), child: LoginScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.gray90003, appTheme.black900])), child: Container(width: double.maxFinite, padding: getPadding(left: 12, right: 12), child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [Container(margin: getMargin(top: 6), decoration: AppDecoration.txtOutline, child: Text("lbl_login".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.displaySmall!.copyWith(letterSpacing: getHorizontalSize(0.36)))), Container(width: getHorizontalSize(308), margin: getMargin(left: 21, top: 88, right: 22), child: Text("msg_please_enter_your".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.bodyLarge!.copyWith(letterSpacing: getHorizontalSize(0.16)))), Container(margin: getMargin(left: 16, top: 23, right: 16), decoration: AppDecoration.outline2.copyWith(borderRadius: BorderRadiusStyle.circleBorder27), child: OutlineGradientButton(padding: EdgeInsets.only(left: getHorizontalSize(2), top: getVerticalSize(2), right: getHorizontalSize(2), bottom: getVerticalSize(2)), strokeWidth: getHorizontalSize(2), gradient: LinearGradient(begin: Alignment(0.09, 1), end: Alignment(0.94, 1), colors: [appTheme.pink40001, appTheme.deepPurpleA200]), corners: Corners(topLeft: Radius.circular(27), topRight: Radius.circular(27), bottomLeft: Radius.circular(27), bottomRight: Radius.circular(27)), child: Padding(padding: getPadding(left: 23, top: 13, right: 23, bottom: 13), child: Row(mainAxisSize: MainAxisSize.min, children: [CustomImageView(svgPath: ImageConstant.imgFlag, height: getVerticalSize(16), width: getHorizontalSize(21), margin: getMargin(top: 6, bottom: 4)), Padding(padding: getPadding(left: 7, top: 2, bottom: 1), child: Text("lbl_01".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumWhiteA700_1)), CustomImageView(svgPath: ImageConstant.imgDrpdwnarrow, height: getVerticalSize(3), width: getHorizontalSize(7), margin: getMargin(left: 4, top: 11, bottom: 11)), Padding(padding: getPadding(left: 21), child: SizedBox(height: getVerticalSize(26), child: VerticalDivider(width: getHorizontalSize(1), thickness: getVerticalSize(1), color: appTheme.gray20001.withOpacity(0.53), indent: getHorizontalSize(4), endIndent: getHorizontalSize(4)))), Padding(padding: getPadding(left: 31, right: 21, bottom: 4), child: Text("lbl_331_623_8413".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyLarge18))])))), CustomElevatedButton(width: getHorizontalSize(212), height: getVerticalSize(65), text: "lbl_submit".tr, margin: getMargin(top: 61), buttonStyle: CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001, decoration: CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001Decoration, buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1, onTap: () {onTapSubmit(context);}), Container(height: getVerticalSize(56), width: getHorizontalSize(350), margin: getMargin(top: 55), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: SizedBox(width: getHorizontalSize(350), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: appTheme.blueGray90003))), Align(alignment: Alignment.center, child: Container(width: getSize(56), padding: getPadding(left: 16, top: 17, right: 16, bottom: 17), decoration: AppDecoration.txtOutline1.copyWith(borderRadius: BorderRadiusStyle.txtCircleBorder28), child: Text("lbl_or".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge!.copyWith(letterSpacing: getHorizontalSize(0.16)))))])), Padding(padding: getPadding(top: 38), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [OutlineGradientButton(padding: EdgeInsets.only(left: getHorizontalSize(2), top: getVerticalSize(2), right: getHorizontalSize(2), bottom: getVerticalSize(2)), strokeWidth: getHorizontalSize(2), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.pink40001, appTheme.gray20001.withOpacity(0)]), corners: Corners(topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)), child: CustomIconButton(height: 64, width: 64, padding: getPadding(all: 16), onTap: () {onTapBtnFacebook(context);}, child: CustomImageView(svgPath: ImageConstant.imgFacebook))), Padding(padding: getPadding(left: 20), child: OutlineGradientButton(padding: EdgeInsets.only(left: getHorizontalSize(2), top: getVerticalSize(2), right: getHorizontalSize(2), bottom: getVerticalSize(2)), strokeWidth: getHorizontalSize(2), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.pink40001, appTheme.gray20001.withOpacity(0)]), corners: Corners(topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)), child: CustomIconButton(height: 64, width: 64, margin: getMargin(left: 20), padding: getPadding(all: 16), onTap: () {onTapBtnGoogle(context);}, child: CustomImageView(svgPath: ImageConstant.imgGoogle)))), Padding(padding: getPadding(left: 20), child: OutlineGradientButton(padding: EdgeInsets.only(left: getHorizontalSize(2), top: getVerticalSize(2), right: getHorizontalSize(2), bottom: getVerticalSize(2)), strokeWidth: getHorizontalSize(2), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.pink40001, appTheme.gray20001.withOpacity(0)]), corners: Corners(topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)), child: CustomIconButton(height: 64, width: 64, margin: getMargin(left: 20), padding: getPadding(all: 16), child: CustomImageView(svgPath: ImageConstant.imgEye))))])), Padding(padding: getPadding(top: 70), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: getPadding(bottom: 1), child: Text("lbl_terms_of_use".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumSkModernistPinkA200)), Padding(padding: getPadding(left: 32, top: 1), child: Text("lbl_privacy_policy".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumSkModernistPinkA200))]))])))));}); } 
/// Navigates to the verifyNumberScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the verifyNumberScreen.
onTapSubmit(BuildContext context) { NavigatorService.pushNamed(AppRoutes.verifyNumberScreen, ); } 
/// Performs a Facebook sign-in and returns a [FacebookUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Facebook sign-in process fails.
onTapBtnFacebook(BuildContext context) async  {             await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
              //TODO Actions to be performed after signin
              }).catchError((onError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
            });
             } 
/// Performs a Google sign-in and returns a [GoogleUser] object.
///
/// If the sign-in is successful, the [onSuccess] callback will be called with
/// a TODO comment needed to be modified by you.
/// If the sign-in fails, the [onError] callback will be called with the error message.
///
/// Throws an exception if the Google sign-in process fails.
onTapBtnGoogle(BuildContext context) async  {         await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
          if(googleUser!=null){
            //TODO Actions to be performed after signin
          } else {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('user data is empty')));
          }
        }).catchError((onError) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(onError.toString())));
        });
         } 
 }