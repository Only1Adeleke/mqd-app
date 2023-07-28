import 'bloc/users_container_bloc.dart';import 'models/users_container_model.dart';import 'package:flutter/material.dart';import 'package:mqd_v1/core/app_export.dart';import 'package:mqd_v1/presentation/users_tab_container_page/users_tab_container_page.dart';import 'package:mqd_v1/widgets/custom_bottom_bar.dart';
// ignore_for_file: must_be_immutable
class UsersContainerScreen extends StatelessWidget {UsersContainerScreen({Key? key}) : super(key: key);

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

static Widget builder(BuildContext context) { return BlocProvider<UsersContainerBloc>(create: (context) => UsersContainerBloc(UsersContainerState(usersContainerModelObj: UsersContainerModel()))..add(UsersContainerInitialEvent()), child: UsersContainerScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<UsersContainerBloc, UsersContainerState>(builder: (context, state) {return SafeArea(child: Scaffold(extendBody: true, extendBodyBehindAppBar: true, body: Container(width: mediaQueryData.size.width, height: mediaQueryData.size.height, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [appTheme.gray90003, appTheme.black900])), child: Navigator(key: navigatorKey, initialRoute: AppRoutes.usersTabContainerPage, onGenerateRoute: (routeSetting) => PageRouteBuilder(pageBuilder: (ctx, ani, ani1) => getCurrentPage(context, routeSetting.name!), transitionDuration: Duration(seconds: 0)))), bottomNavigationBar: CustomBottomBar(onChanged: (BottomBarEnum type) {Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));})));}); } 
///Handling route based on bottom click actions
String getCurrentRoute(BottomBarEnum type) { switch (type) {case BottomBarEnum.Swipe: return AppRoutes.usersTabContainerPage; case BottomBarEnum.Users: return "/"; case BottomBarEnum.Chats: return "/"; case BottomBarEnum.User24x21: return "/"; default: return "/";} } 
///Handling page based on route
Widget getCurrentPage(BuildContext context, String currentRoute, ) { switch (currentRoute) {case AppRoutes.usersTabContainerPage: return UsersTabContainerPage.builder(context); default: return DefaultWidget();} } 
 }
