import 'bloc/event_details_bloc.dart';import 'models/event_details_model.dart';import 'package:flutter/material.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/widgets/app_bar/appbar_image.dart';import 'package:mqd_v1/widgets/app_bar/custom_app_bar.dart';import 'package:mqd_v1/widgets/custom_elevated_button.dart';class EventDetailsScreen extends StatelessWidget {const EventDetailsScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<EventDetailsBloc>(create: (context) => EventDetailsBloc(EventDetailsState(eventDetailsModelObj: EventDetailsModel()))..add(EventDetailsInitialEvent()), child: EventDetailsScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<EventDetailsBloc, EventDetailsState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.gray90003, appTheme.black900])), child: SizedBox(width: double.maxFinite, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(392), width: double.maxFinite, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.centerLeft, child: Container(height: getVerticalSize(392), width: getHorizontalSize(190), decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.24, 0), end: Alignment(1, 1.72), colors: [theme.colorScheme.primary, appTheme.deepPurpleA20001])))), Align(alignment: Alignment.bottomCenter, child: Container(height: getVerticalSize(295), width: double.maxFinite, margin: getMargin(bottom: 13), padding: getPadding(top: 23, bottom: 23), decoration: AppDecoration.fill1, child: Stack(alignment: Alignment.topRight, children: [CustomImageView(imagePath: ImageConstant.imgIcon45x26, height: getVerticalSize(45), width: getHorizontalSize(26), alignment: Alignment.topRight), CustomImageView(imagePath: ImageConstant.imgLocationWhiteA70024x13, height: getVerticalSize(24), width: getHorizontalSize(13), alignment: Alignment.topRight, margin: getMargin(top: 11))]))), CustomAppBar(height: getVerticalSize(53), leadingWidth: 46, leading: AppbarImage(height: getVerticalSize(13), width: getHorizontalSize(22), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 7), onTap: () {onTapArrowleft4(context);}), actions: [AppbarImage(height: getSize(19), width: getSize(19), imagePath: ImageConstant.imgSearch, margin: getMargin(left: 22, right: 22, bottom: 2))])])), Expanded(child: SingleChildScrollView(padding: getPadding(top: 30), child: Padding(padding: getPadding(left: 27, right: 7), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(height: getVerticalSize(44), width: getHorizontalSize(257), child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.bottomLeft, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgCalendar14x17, height: getVerticalSize(14), width: getHorizontalSize(17), margin: getMargin(bottom: 21)), Container(width: getHorizontalSize(45), margin: getMargin(left: 7), child: Text("lbl_9_may_2021".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall))])), Align(alignment: Alignment.bottomRight, child: Padding(padding: getPadding(right: 67), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.start, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgDateicon, height: getVerticalSize(12), width: getHorizontalSize(13), radius: BorderRadius.circular(getHorizontalSize(6)), margin: getMargin(top: 1, bottom: 21)), Container(width: getHorizontalSize(47), margin: getMargin(left: 8), child: Text("lbl_10pm_01am".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.titleSmall))]))), Align(alignment: Alignment.topCenter, child: Container(decoration: AppDecoration.txtOutline2, child: Text("lbl_grand_concert".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.headlineLarge)))])), Container(margin: getMargin(top: 60), decoration: AppDecoration.txtOutline, child: Text("lbl_description".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeWhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 10), child: Row(children: [Expanded(child: SizedBox(width: getHorizontalSize(306), child: Text("msg_electronic_cocert".tr, maxLines: 2, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge!.copyWith(letterSpacing: getHorizontalSize(0.16))))), Padding(padding: getPadding(top: 22, bottom: 3), child: Text("lbl_more2".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleMediumPrimarySemiBold.copyWith(letterSpacing: getHorizontalSize(0.16))))])), Container(height: getVerticalSize(101), width: getHorizontalSize(285), margin: getMargin(top: 26), child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topLeft, child: Text("msg_interested_viewers".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleLargeWhiteA700.copyWith(letterSpacing: getHorizontalSize(0.2)))), Align(alignment: Alignment.center, child: SizedBox(height: getVerticalSize(101), width: getHorizontalSize(280), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.bottomLeft, child: Container(height: getSize(55), width: getSize(55), decoration: BoxDecoration(color: appTheme.deepPurple600, borderRadius: BorderRadius.circular(getHorizontalSize(27)), border: Border.all(color: appTheme.whiteA700, width: getHorizontalSize(2), strokeAlign: strokeAlignOutside)))), Align(alignment: Alignment.bottomLeft, child: Container(height: getSize(55), width: getSize(55), margin: getMargin(left: 45), decoration: BoxDecoration(color: appTheme.deepPurple600, borderRadius: BorderRadius.circular(getHorizontalSize(27)), border: Border.all(color: appTheme.whiteA700, width: getHorizontalSize(2), strokeAlign: strokeAlignOutside)))), Align(alignment: Alignment.bottomLeft, child: Container(height: getSize(55), width: getSize(55), margin: getMargin(left: 90), decoration: BoxDecoration(color: appTheme.deepPurple600, borderRadius: BorderRadius.circular(getHorizontalSize(27)), border: Border.all(color: appTheme.whiteA700, width: getHorizontalSize(2), strokeAlign: strokeAlignOutside)))), Align(alignment: Alignment.bottomRight, child: Container(height: getSize(55), width: getSize(55), margin: getMargin(right: 90), decoration: BoxDecoration(color: appTheme.deepPurple600, borderRadius: BorderRadius.circular(getHorizontalSize(27)), border: Border.all(color: appTheme.whiteA700, width: getHorizontalSize(2), strokeAlign: strokeAlignOutside)))), Align(alignment: Alignment.bottomRight, child: Container(height: getSize(55), width: getSize(55), margin: getMargin(right: 45), decoration: BoxDecoration(color: appTheme.deepPurple600, borderRadius: BorderRadius.circular(getHorizontalSize(27)), border: Border.all(color: appTheme.whiteA700, width: getHorizontalSize(2), strokeAlign: strokeAlignOutside)))), Align(alignment: Alignment.centerRight, child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(width: getHorizontalSize(25), child: Text("lbl_237".tr, maxLines: 1, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: CustomTextStyles.titleSmall15)), Align(alignment: Alignment.centerRight, child: Container(height: getSize(55), width: getSize(55), margin: getMargin(top: 9), decoration: BoxDecoration(color: appTheme.indigo90002, borderRadius: BorderRadius.circular(getHorizontalSize(27)), border: Border.all(color: appTheme.whiteA700, width: getHorizontalSize(2), strokeAlign: strokeAlignOutside))))]))])))])), CustomElevatedButton(width: getHorizontalSize(212), height: getVerticalSize(65), text: "lbl_buy_ticket_s".tr, margin: getMargin(top: 39, right: 54), buttonStyle: CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001, decoration: CustomButtonStyles.gradientnameprimarynamedeeppurpleA20001Decoration, buttonTextStyle: CustomTextStyles.titleMediumSemiBold_1, alignment: Alignment.centerRight)]))))])))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapArrowleft4(BuildContext context) { NavigatorService.goBack(); } 
 }