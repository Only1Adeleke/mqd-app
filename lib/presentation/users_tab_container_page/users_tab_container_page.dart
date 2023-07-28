import '../users_tab_container_page/widgets/listaddicon_item_widget.dart';
import 'bloc/users_tab_container_bloc.dart';
import 'models/listaddicon_item_model.dart';
import 'models/users_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';
import 'package:mqd_v1/presentation/users_page/users_page.dart';
import 'package:mqd_v1/widgets/app_bar/appbar_image.dart';
import 'package:mqd_v1/widgets/app_bar/appbar_title.dart';
import 'package:mqd_v1/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class UsersTabContainerPage extends StatefulWidget {
  const UsersTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  UsersTabContainerPageState createState() => UsersTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<UsersTabContainerBloc>(
      create: (context) => UsersTabContainerBloc(UsersTabContainerState(
        usersTabContainerModelObj: UsersTabContainerModel(),
      ))
        ..add(UsersTabContainerInitialEvent()),
      child: UsersTabContainerPage(),
    );
  }
}

class UsersTabContainerPageState extends State<UsersTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          height: getVerticalSize(
            58,
          ),
          title: AppbarTitle(
            text: "lbl_add_your_story".tr,
            margin: getMargin(
              left: 4,
            ),
          ),
          actions: [
            AppbarImage(
              height: getVerticalSize(
                20,
              ),
              width: getHorizontalSize(
                113,
              ),
              imagePath: ImageConstant.imgToprighticons,
              margin: getMargin(
                left: 22,
                top: 32,
                right: 22,
                bottom: 3,
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
          child: SingleChildScrollView(
            padding: getPadding(
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: ImageConstant.imgMapWhiteA700,
                  height: getVerticalSize(
                    26,
                  ),
                  width: getHorizontalSize(
                    29,
                  ),
                  margin: getMargin(
                    left: 15,
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    68,
                  ),
                  child: BlocSelector<UsersTabContainerBloc,
                      UsersTabContainerState, UsersTabContainerModel?>(
                    selector: (state) => state.usersTabContainerModelObj,
                    builder: (context, usersTabContainerModelObj) {
                      return ListView.separated(
                        padding: getPadding(
                          left: 6,
                          top: 8,
                          right: 6,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (
                          context,
                          index,
                        ) {
                          return SizedBox(
                            width: getHorizontalSize(
                              15,
                            ),
                          );
                        },
                        itemCount: usersTabContainerModelObj
                                ?.listaddiconItemList.length ??
                            0,
                        itemBuilder: (context, index) {
                          ListaddiconItemModel model = usersTabContainerModelObj
                                  ?.listaddiconItemList[index] ??
                              ListaddiconItemModel();
                          return ListaddiconItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    33,
                  ),
                  width: getHorizontalSize(
                    373,
                  ),
                  margin: getMargin(
                    left: 2,
                    top: 21,
                  ),
                  child: TabBar(
                    controller: tabviewController,
                    labelColor: theme.colorScheme.primary,
                    labelStyle: TextStyle(),
                    unselectedLabelColor: appTheme.deepPurple300,
                    unselectedLabelStyle: TextStyle(),
                    indicatorColor: appTheme.whiteA700,
                    tabs: [
                      Tab(
                        child: Text(
                          "lbl_all".tr,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_online".tr,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_new_daters".tr,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Tab(
                        child: Text(
                          "lbl_liked_you".tr,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: getVerticalSize(
                    521,
                  ),
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      UsersPage.builder(context),
                      UsersPage.builder(context),
                      UsersPage.builder(context),
                      UsersPage.builder(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
