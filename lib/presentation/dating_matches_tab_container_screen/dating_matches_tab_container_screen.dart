import 'bloc/dating_matches_tab_container_bloc.dart';import 'models/dating_matches_tab_container_model.dart';import 'package:flutter/material.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/presentation/dating_matches_page/dating_matches_page.dart';class DatingMatchesTabContainerScreen extends StatefulWidget {const DatingMatchesTabContainerScreen({Key? key}) : super(key: key);

@override DatingMatchesTabContainerScreenState createState() =>  DatingMatchesTabContainerScreenState();
static Widget builder(BuildContext context) { return BlocProvider<DatingMatchesTabContainerBloc>(create: (context) => DatingMatchesTabContainerBloc(DatingMatchesTabContainerState(datingMatchesTabContainerModelObj: DatingMatchesTabContainerModel()))..add(DatingMatchesTabContainerInitialEvent()), child: DatingMatchesTabContainerScreen()); } 
 }

// ignore_for_file: must_be_immutable
class DatingMatchesTabContainerScreenState extends State<DatingMatchesTabContainerScreen> with  TickerProviderStateMixin {late TabController tabviewController;

@override void initState() { super.initState(); tabviewController = TabController(length: 4, vsync: this); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<DatingMatchesTabContainerBloc, DatingMatchesTabContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.gray90003, appTheme.black900])), child: SizedBox(width: double.maxFinite, child: Padding(padding: getPadding(top: 40), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgArrowleft, height: getVerticalSize(13), width: getHorizontalSize(22), margin: getMargin(left: 24), onTap: () {onTapImgArrowleft(context);}), Container(margin: getMargin(left: 29, top: 29), decoration: AppDecoration.txtOutline, child: Text("lbl_dating_matches".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.displaySmall!.copyWith(letterSpacing: getHorizontalSize(0.36)))), Align(alignment: Alignment.center, child: Padding(padding: getPadding(top: 13), child: Text("msg_check_out_lists".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: theme.textTheme.bodyLarge!.copyWith(letterSpacing: getHorizontalSize(0.16))))), Container(height: getVerticalSize(34), width: getHorizontalSize(346), margin: getMargin(top: 24), child: TabBar(controller: tabviewController, labelColor: theme.colorScheme.primary, labelStyle: TextStyle(), unselectedLabelColor: appTheme.deepPurple300, unselectedLabelStyle: TextStyle(), indicatorColor: appTheme.whiteA700, tabs: [Tab(child: Text("lbl_all".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_you_liked".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_liked_you".tr, overflow: TextOverflow.ellipsis)), Tab(child: Text("lbl_views".tr, overflow: TextOverflow.ellipsis))])), SizedBox(height: getVerticalSize(685), child: TabBarView(controller: tabviewController, children: [DatingMatchesPage.builder(context), DatingMatchesPage.builder(context), DatingMatchesPage.builder(context), DatingMatchesPage.builder(context)]))]))))));}); } 


/// Navigates to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is
/// used to build the navigation stack. When the action is triggered, this
/// function uses the [NavigatorService] to navigate to the previous screen
/// in the navigation stack.
onTapImgArrowleft(BuildContext context) { NavigatorService.goBack(); } 
 }
