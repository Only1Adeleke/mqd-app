import '../profile_one_screen/widgets/profile_one1_item_widget.dart';import '../profile_one_screen/widgets/profile_one_item_widget.dart';import 'bloc/profile_one_bloc.dart';import 'models/profile_one1_item_model.dart';import 'models/profile_one_item_model.dart';import 'models/profile_one_model.dart';import 'package:flutter/material.dart';import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/widgets/custom_elevated_button.dart';import 'package:mqd_v1/widgets/custom_icon_button.dart';import 'package:outline_gradient_button/outline_gradient_button.dart';import 'package:readmore/readmore.dart';class ProfileOneScreen extends StatelessWidget {const ProfileOneScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<ProfileOneBloc>(create: (context) => ProfileOneBloc(ProfileOneState(profileOneModelObj: ProfileOneModel()))..add(ProfileOneInitialEvent()), child: ProfileOneScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, resizeToAvoidBottomInset: false, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.whiteA700, appTheme.whiteA700.withOpacity(0)])), child: SizedBox(width: double.maxFinite, child: SingleChildScrollView(child: SizedBox(height: getVerticalSize(1325), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: SizedBox(height: getVerticalSize(415), width: double.maxFinite, child: Stack(alignment: Alignment.topLeft, children: [CustomImageView(imagePath: ImageConstant.imgPhoto415x375, height: getVerticalSize(415), width: getHorizontalSize(375), alignment: Alignment.center), CustomIconButton(height: 52, width: 52, padding: getPadding(all: 14), decoration: IconButtonStyleHelper.outlineGray20001, alignment: Alignment.topLeft, onTap: () {onTapBtnArrowleft(context);}, child: CustomImageView(svgPath: ImageConstant.imgArrowleftWhiteA700))]))), Align(alignment: Alignment.bottomCenter, child: Container(padding: getPadding(left: 16, top: 4, right: 16, bottom: 4), decoration: AppDecoration.gradientnamegray90009nameblack90005.copyWith(borderRadius: BorderRadiusStyle.customBorderTL30), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 24, right: 25), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomIconButton(height: 50, width: 50, margin: getMargin(top: 2, bottom: 2), padding: getPadding(all: 15), decoration: IconButtonStyleHelper.outlineGreenA40033, child: CustomImageView(imagePath: ImageConstant.imgLikeicon)), CustomIconButton(height: 50, width: 50, margin: getMargin(top: 2, bottom: 2), padding: getPadding(all: 13), decoration: IconButtonStyleHelper.outlineOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgLoveicon)), CustomIconButton(height: 50, width: 50, margin: getMargin(top: 2, bottom: 2), padding: getPadding(all: 15), decoration: IconButtonStyleHelper.outlineRed40033, child: CustomImageView(imagePath: ImageConstant.imgLikeicon)), CustomIconButton(height: 54, width: 54, padding: getPadding(all: 16), decoration: IconButtonStyleHelper.outlineBlue70044, child: CustomImageView(imagePath: ImageConstant.imgInfoicon))])), Padding(padding: getPadding(left: 23, top: 34, right: 23), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: getPadding(top: 3), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("msg_jessica_parker".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.headlineSmallSkModernistWhiteA700), Padding(padding: getPadding(top: 2), child: Text("msg_proffesional_model".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumSkModernist_1))])), OutlineGradientButton(padding: EdgeInsets.only(left: getHorizontalSize(2), top: getVerticalSize(2), right: getHorizontalSize(2), bottom: getVerticalSize(2)), strokeWidth: getHorizontalSize(2), gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.pink40001, appTheme.gray20001.withOpacity(0)]), corners: Corners(topLeft: Radius.circular(15), topRight: Radius.circular(15), bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15)), child: CustomIconButton(height: 52, width: 52, padding: getPadding(all: 14), onTap: () {onTapBtnSend(context);}, child: CustomImageView(svgPath: ImageConstant.imgSend)))])), Padding(padding: getPadding(left: 23, top: 31, right: 23), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: getPadding(top: 3), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_location".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumSkModernistBold), Padding(padding: getPadding(top: 9), child: Text("msg_chicago_il_united".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumSkModernist_1))])), CustomElevatedButton(width: getHorizontalSize(61), height: getVerticalSize(34), text: "lbl_1_km".tr, margin: getMargin(bottom: 16), leftIcon: Container(margin: getMargin(right: 2), child: CustomImageView(svgPath: ImageConstant.imgLocationPinkA200)), buttonStyle: CustomButtonStyles.fillPinkA200, buttonTextStyle: CustomTextStyles.labelLargeSkModernistPinkA200)])), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 23, top: 33), child: Text("lbl_about".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumSkModernistBold))), Container(width: getHorizontalSize(288), margin: getMargin(top: 8), child: ReadMoreText("msg_my_name_is_jessica".tr, trimLines: 3, colorClickableText: appTheme.pinkA200, trimMode: TrimMode.Line, trimCollapsedText: "lbl_read_more".tr, moreStyle: CustomTextStyles.bodyMediumSkModernist_1, lessStyle: CustomTextStyles.bodyMediumSkModernist_1)), Align(alignment: Alignment.centerLeft, child: Padding(padding: getPadding(left: 9, top: 12), child: Text("lbl_interests".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumSkModernistBold))), Padding(padding: getPadding(left: 9, top: 10), child: BlocSelector<ProfileOneBloc, ProfileOneState, ProfileOneModel?>(selector: (state) => state.profileOneModelObj, builder: (context, profileOneModelObj) {return GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(55), crossAxisCount: 2, mainAxisSpacing: getHorizontalSize(0), crossAxisSpacing: getHorizontalSize(0)), physics: NeverScrollableScrollPhysics(), itemCount: profileOneModelObj?.profileOneItemList.length ?? 0, itemBuilder: (context, index) {ProfileOneItemModel model = profileOneModelObj?.profileOneItemList[index] ?? ProfileOneItemModel(); return ProfileOneItemWidget(model);});})), Padding(padding: getPadding(top: 34, bottom: 36), child: BlocSelector<ProfileOneBloc, ProfileOneState, ProfileOneModel?>(selector: (state) => state.profileOneModelObj, builder: (context, profileOneModelObj) {return StaggeredGridView.countBuilder(shrinkWrap: true, primary: false, crossAxisCount: 4, crossAxisSpacing: getHorizontalSize(10), mainAxisSpacing: getHorizontalSize(10), staggeredTileBuilder: (index) {return StaggeredTile.fit(2);}, itemCount: profileOneModelObj?.profileOne1ItemList.length ?? 0, itemBuilder: (context, index) {ProfileOne1ItemModel model = profileOneModelObj?.profileOne1ItemList[index] ?? ProfileOne1ItemModel(); return ProfileOne1ItemWidget(model);});}))])))]))))))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapBtnArrowleft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the messagesThreadDetailsScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the messagesThreadDetailsScreen.
onTapBtnSend(BuildContext context) { NavigatorService.pushNamed(AppRoutes.messagesThreadDetailsScreen, ); } 
 }