import '../messages_screen/widgets/listbg_item_widget.dart';
import '../messages_screen/widgets/matchesthumbs_item_widget.dart';
import 'bloc/messages_bloc.dart';
import 'models/listbg_item_model.dart';
import 'models/matchesthumbs_item_model.dart';
import 'models/messages_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:mqd_v1/presentation/users_tab_container_page/users_tab_container_page.dart';
import 'package:mqd_v1/widgets/app_bar/appbar_iconbutton.dart';
import 'package:mqd_v1/widgets/app_bar/appbar_image.dart';
import 'package:mqd_v1/widgets/app_bar/appbar_title.dart';
import 'package:mqd_v1/widgets/app_bar/custom_app_bar.dart';
import 'package:mqd_v1/widgets/custom_bottom_bar.dart';
import 'package:mqd_v1/widgets/custom_search_view.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class MessagesScreen extends StatelessWidget {
  MessagesScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MessagesBloc>(
      create: (context) => MessagesBloc(MessagesState(
        messagesModelObj: MessagesModel(),
      ))
        ..add(MessagesInitialEvent()),
      child: MessagesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            80,
          ),
          leadingWidth: 59,
          leading: AppbarIconbutton(
            svgPath: ImageConstant.imgMenu,
            margin: getMargin(
              left: 19,
              top: 8,
              bottom: 8,
            ),
          ),
          title: AppbarTitle(
            text: "lbl_add_new_message".tr,
            margin: getMargin(
              left: 4,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                21,
              ),
              width: getHorizontalSize(
                22,
              ),
              imagePath: ImageConstant.imgArchiveicon,
              margin: getMargin(
                left: 22,
                top: 17,
                right: 22,
                bottom: 18,
              ),
            ),
          ],
        ),
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
          child: Expanded(
            child: Container(
              width: double.maxFinite,
              padding: getPadding(
                left: 3,
                right: 3,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: OutlineGradientButton(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          2,
                        ),
                        top: getVerticalSize(
                          2,
                        ),
                        right: getHorizontalSize(
                          2,
                        ),
                        bottom: getVerticalSize(
                          2,
                        ),
                      ),
                      strokeWidth: getHorizontalSize(
                        2,
                      ),
                      gradient: LinearGradient(
                        begin: Alignment(
                          0.09,
                          1,
                        ),
                        end: Alignment(
                          0.94,
                          1,
                        ),
                        colors: [
                          appTheme.pink40001,
                          appTheme.deepPurpleA200,
                        ],
                      ),
                      corners: Corners(
                        topLeft: Radius.circular(
                          30,
                        ),
                        topRight: Radius.circular(
                          30,
                        ),
                        bottomLeft: Radius.circular(
                          30,
                        ),
                        bottomRight: Radius.circular(
                          30,
                        ),
                      ),
                      child: BlocSelector<MessagesBloc, MessagesState,
                          TextEditingController?>(
                        selector: (state) => state.searchController,
                        builder: (context, searchController) {
                          return CustomSearchView(
                            controller: searchController,
                            hintText: "msg_search_message".tr,
                            hintStyle: CustomTextStyles.titleMediumWhiteA700_1,
                            textStyle: CustomTextStyles.titleMediumWhiteA700_1,
                            alignment: Alignment.center,
                            suffix: Container(
                              margin: getMargin(
                                left: 30,
                                top: 19,
                                right: 26,
                                bottom: 19,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSearch,
                                height: getVerticalSize(
                                  22,
                                ),
                                width: getHorizontalSize(
                                  19,
                                ),
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: getVerticalSize(
                                60,
                              ),
                            ),
                            filled: true,
                            fillColor: appTheme.black90003,
                            contentPadding: getPadding(
                              left: 30,
                              top: 18,
                              bottom: 18,
                            ),
                            defaultBorderDecoration:
                                SearchViewStyleHelper.outlineTL30,
                            enabledBorderDecoration:
                                SearchViewStyleHelper.outlineTL30,
                            focusedBorderDecoration:
                                SearchViewStyleHelper.outlineTL30,
                            disabledBorderDecoration:
                                SearchViewStyleHelper.outlineTL30,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 32,
                    ),
                    child: Text(
                      "lbl_new_matches".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleMediumWhiteA700SemiBold,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: getPadding(
                        top: 18,
                        right: 3,
                      ),
                      child: BlocSelector<MessagesBloc, MessagesState,
                          MessagesModel?>(
                        selector: (state) => state.messagesModelObj,
                        builder: (context, messagesModelObj) {
                          return ListView.separated(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            separatorBuilder: (
                              context,
                              index,
                            ) {
                              return SizedBox(
                                height: getVerticalSize(
                                  1,
                                ),
                              );
                            },
                            itemCount: messagesModelObj
                                    ?.matchesthumbsItemList.length ??
                                0,
                            itemBuilder: (context, index) {
                              MatchesthumbsItemModel model = messagesModelObj
                                      ?.matchesthumbsItemList[index] ??
                                  MatchesthumbsItemModel();
                              return MatchesthumbsItemWidget(
                                model,
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 13,
                      top: 37,
                    ),
                    child: Text(
                      "lbl_all_messages".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.headlineSmall!.copyWith(
                        letterSpacing: getHorizontalSize(
                          1.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 13,
                          top: 22,
                          right: 6,
                        ),
                        child: BlocSelector<MessagesBloc, MessagesState,
                            MessagesModel?>(
                          selector: (state) => state.messagesModelObj,
                          builder: (context, messagesModelObj) {
                            return ListView.separated(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (
                                context,
                                index,
                              ) {
                                return SizedBox(
                                  height: getVerticalSize(
                                    16,
                                  ),
                                );
                              },
                              itemCount:
                                  messagesModelObj?.listbgItemList.length ?? 0,
                              itemBuilder: (context, index) {
                                ListbgItemModel model =
                                    messagesModelObj?.listbgItemList[index] ??
                                        ListbgItemModel();
                                return ListbgItemWidget(
                                  model,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Swipe:
        return AppRoutes.usersTabContainerPage;
      case BottomBarEnum.Users:
        return "/";
      case BottomBarEnum.Chats:
        return "/";
      case BottomBarEnum.User24x21:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.usersTabContainerPage:
        return UsersTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
