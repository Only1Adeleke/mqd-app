import '../likes_interests_screen/widgets/likeintrstflds_item_widget.dart';import 'bloc/likes_interests_bloc.dart';import 'models/likeintrstflds_item_model.dart';import 'models/likes_interests_model.dart';import 'package:flutter/material.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/widgets/app_bar/appbar_image.dart';import 'package:mqd_v1/widgets/app_bar/custom_app_bar.dart';import 'package:mqd_v1/widgets/custom_elevated_button.dart';class LikesInterestsScreen extends StatelessWidget {const LikesInterestsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<LikesInterestsBloc>(create: (context) => LikesInterestsBloc(LikesInterestsState(likesInterestsModelObj: LikesInterestsModel()))..add(LikesInterestsInitialEvent()), child: LikesInterestsScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, appBar: CustomAppBar(height: getVerticalSize(56), leadingWidth: 46, leading: AppbarImage(height: getVerticalSize(13), width: getHorizontalSize(22), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 19, bottom: 23), onTap: () {onTapArrowleft(context);}), actions: [GestureDetector(onTap: () {onTapTxtSkiplink(context);}, child: Padding(padding: getPadding(left: 18, top: 16, right: 18, bottom: 16), child: Text("lbl_skip".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumPink40005.copyWith(letterSpacing: getHorizontalSize(0.18)))))]), body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.gray90003, appTheme.black900])), child: Container(width: double.maxFinite, padding: getPadding(left: 21, top: 18, right: 21, bottom: 18), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(decoration: AppDecoration.txtOutline, child: Text("msg_likes_interests".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.center, style: theme.textTheme.displaySmall!.copyWith(letterSpacing: getHorizontalSize(0.36)))), Padding(padding: getPadding(top: 16), child: Text("msg_share_your_likes".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge!.copyWith(letterSpacing: getHorizontalSize(0.16)))), Padding(padding: getPadding(top: 49, bottom: 5), child: BlocSelector<LikesInterestsBloc, LikesInterestsState, LikesInterestsModel?>(selector: (state) => state.likesInterestsModelObj, builder: (context, likesInterestsModelObj) {return Wrap(runSpacing: getVerticalSize(5), spacing: getHorizontalSize(5), children: List<Widget>.generate(likesInterestsModelObj?.likeintrstfldsItemList.length ?? 0, (index) {LikeintrstfldsItemModel model = likesInterestsModelObj?.likeintrstfldsItemList[index] ?? LikeintrstfldsItemModel(); return LikeintrstfldsItemWidget(model, onSelectedChipView: (value) {context.read<LikesInterestsBloc>().add(UpdateChipViewEvent(index: index, isSelected: value));});}));}))]))), bottomNavigationBar: CustomElevatedButton(width: getHorizontalSize(207), height: getVerticalSize(60), text: "lbl_continue".tr, margin: getMargin(left: 84, right: 84, bottom: 27), buttonStyle: CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001, decoration: CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001Decoration, buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1, onTap: () {onTapContinue(context);}))); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the uploadIdScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the uploadIdScreen.
onTapTxtSkiplink(BuildContext context) { NavigatorService.pushNamed(AppRoutes.uploadIdScreen, ); } 
/// Navigates to the uploadIdScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `NavigatorService`
/// to push the named route for the uploadIdScreen.
onTapContinue(BuildContext context) { NavigatorService.pushNamed(AppRoutes.uploadIdScreen, ); } 
 }
