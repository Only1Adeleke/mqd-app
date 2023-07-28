import 'bloc/home_swipe_bloc.dart';import 'models/home_swipe_model.dart';import 'package:flutter/material.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/presentation/users_tab_container_page/users_tab_container_page.dart';import 'package:mqd_v1/widgets/app_bar/appbar_iconbutton.dart';import 'package:mqd_v1/widgets/app_bar/appbar_image.dart';import 'package:mqd_v1/widgets/app_bar/appbar_title.dart';import 'package:mqd_v1/widgets/app_bar/custom_app_bar.dart';import 'package:mqd_v1/widgets/custom_bottom_bar.dart';import 'package:mqd_v1/widgets/custom_elevated_button.dart';import 'package:mqd_v1/widgets/custom_icon_button.dart';
// ignore_for_file: must_be_immutable
class HomeSwipeScreen extends StatelessWidget {HomeSwipeScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<HomeSwipeBloc>(create: (context) => HomeSwipeBloc(HomeSwipeState(homeSwipeModelObj: HomeSwipeModel()))..add(HomeSwipeInitialEvent()), child: HomeSwipeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<HomeSwipeBloc, HomeSwipeState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, appBar: CustomAppBar(height: getVerticalSize(84), leadingWidth: 42, leading: AppbarIconbutton(imagePath: ImageConstant.imgGroup1849, margin: getMargin(left: 2, top: 8, bottom: 8)), title: AppbarTitle(text: "lbl_add_story".tr, margin: getMargin(left: 12)), actions: [AppbarImage(height: getSize(22), width: getSize(22), imagePath: ImageConstant.imgSearch, margin: getMargin(left: 3, top: 14, right: 18)), AppbarImage(height: getVerticalSize(23), width: getHorizontalSize(25), imagePath: ImageConstant.imgGroup1845, margin: getMargin(left: 31, top: 14, right: 18)), AppbarImage(height: getVerticalSize(20), width: getHorizontalSize(17), imagePath: ImageConstant.imgIconlyboldfilter, margin: getMargin(left: 29, top: 15, right: 21, bottom: 1))]), body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.gray90003, appTheme.black900])), child: Container(width: double.maxFinite, padding: getPadding(left: 5, top: 35, right: 5, bottom: 35), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 7, top: 2), child: Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: getVerticalSize(471), width: getHorizontalSize(350), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgPhoto, height: getVerticalSize(454), width: getHorizontalSize(274), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.topCenter), Align(alignment: Alignment.center, child: SizedBox(height: getVerticalSize(454), width: getHorizontalSize(350), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgPhoto454x350, height: getVerticalSize(454), width: getHorizontalSize(350), radius: BorderRadius.circular(getHorizontalSize(15)), alignment: Alignment.center), Align(alignment: Alignment.center, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(left: 18, right: 17), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [CustomElevatedButton(width: getHorizontalSize(72), height: getVerticalSize(34), text: "lbl_1_km".tr, margin: getMargin(top: 3, bottom: 2), leftIcon: Container(margin: getMargin(right: 2), child: CustomImageView(svgPath: ImageConstant.imgLocationWhiteA700)), buttonStyle: CustomButtonStyles.fillWhiteA700, buttonTextStyle: CustomTextStyles.labelLargeSkModernist), CustomIconButton(height: 40, width: 40, padding: getPadding(all: 12), decoration: IconButtonStyleHelper.gradientnameindigo900namegray90002, child: CustomImageView(svgPath: ImageConstant.imgGroup1853))])), Container(height: getVerticalSize(84), width: getHorizontalSize(350), margin: getMargin(top: 314), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: appTheme.black90005, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.customBorderBL15), child: Container(height: getVerticalSize(83), width: getHorizontalSize(350), decoration: AppDecoration.fill.copyWith(borderRadius: BorderRadiusStyle.customBorderBL15), child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgPhoto83x350, height: getVerticalSize(83), width: getHorizontalSize(350), radius: BorderRadius.only(bottomLeft: Radius.circular(getHorizontalSize(15)), bottomRight: Radius.circular(getHorizontalSize(15))), alignment: Alignment.center), Align(alignment: Alignment.topRight, child: Padding(padding: getPadding(top: 13, right: 61), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [GestureDetector(onTap: () {onTapTxtJessicaparker(context);}, child: Text("msg_jessica_parker".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.headlineSmallSkModernistWhiteA700)), Padding(padding: getPadding(top: 3), child: Text("msg_professional_model".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.bodyMediumSkModernist_1))])))])))), CustomImageView(imagePath: ImageConstant.imgProfilepicture, height: getSize(75), width: getSize(75), radius: BorderRadius.circular(getHorizontalSize(37)), alignment: Alignment.topLeft, onTap: () {onTapImgProfilepicture(context);})]))]))]))), CustomImageView(svgPath: ImageConstant.imgOverflowmenu, height: getVerticalSize(76), width: getHorizontalSize(23), alignment: Alignment.topRight, margin: getMargin(top: 163))])), CustomImageView(imagePath: ImageConstant.imgPaginationv2, height: getVerticalSize(44), width: getHorizontalSize(4), margin: getMargin(left: 3, top: 182, bottom: 245))])), Padding(padding: getPadding(left: 36, top: 33), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomIconButton(height: 50, width: 50, margin: getMargin(top: 2, bottom: 2), padding: getPadding(all: 15), decoration: IconButtonStyleHelper.outlineGreenA40033, child: CustomImageView(imagePath: ImageConstant.imgLikeicon)), CustomIconButton(height: 50, width: 50, margin: getMargin(left: 30, top: 2, bottom: 2), padding: getPadding(all: 13), decoration: IconButtonStyleHelper.outlineOnPrimaryContainer, child: CustomImageView(imagePath: ImageConstant.imgLoveicon)), CustomIconButton(height: 50, width: 50, margin: getMargin(left: 30, top: 2, bottom: 2), padding: getPadding(all: 15), decoration: IconButtonStyleHelper.outlineRed40033, child: CustomImageView(imagePath: ImageConstant.imgLikeicon)), CustomIconButton(height: 54, width: 54, margin: getMargin(left: 28), padding: getPadding(all: 16), decoration: IconButtonStyleHelper.outlineBlue70044, child: CustomImageView(imagePath: ImageConstant.imgInfoicon))]))]))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Swipe: return AppRoutes.usersTabContainerPage; case BottomBarEnum.Users: return "/"; case BottomBarEnum.Chats: return "/"; case BottomBarEnum.User24x21: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.usersTabContainerPage: return UsersTabContainerPage.builder(context); default: return DefaultWidget();} } 
/// Navigates to the profileOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the profileOneScreen.
onTapTxtJessicaparker(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileOneScreen, ); } 
/// Navigates to the profileOneScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the profileOneScreen.
onTapImgProfilepicture(BuildContext context) { NavigatorService.pushNamed(AppRoutes.profileOneScreen, ); } 
 }
