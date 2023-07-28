import 'package:flutter/material.dart';
import 'package:mqd_v1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgSwipe,
      activeIcon: ImageConstant.imgSwipe,
      type: BottomBarEnum.Swipe,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUsers,
      activeIcon: ImageConstant.imgUsers,
      type: BottomBarEnum.Users,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgChats,
      activeIcon: ImageConstant.imgChats,
      type: BottomBarEnum.Chats,
      isPng: true,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser24x21,
      activeIcon: ImageConstant.imgUser24x21,
      type: BottomBarEnum.User24x21,
      isPng: true,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: getHorizontalSize(
            374,
          ),
          child: Divider(
            height: getVerticalSize(
              1,
            ),
            thickness: getVerticalSize(
              1,
            ),
            color: appTheme.gray90005,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 1,
          ),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            elevation: 0,
            currentIndex: selectedIndex,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              if (bottomMenuList[index].isCircle) {
                return BottomNavigationBarItem(
                  icon: CustomImageView(
                    svgPath: bottomMenuList[index].isPng == true
                        ? null
                        : bottomMenuList[index].icon,
                    imagePath: bottomMenuList[index].isPng == true
                        ? bottomMenuList[index].icon
                        : null,
                    height: getVerticalSize(
                      83,
                    ),
                    width: getHorizontalSize(
                      43,
                    ),
                  ),
                  label: '',
                );
              }
              return BottomNavigationBarItem(
                icon: CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].icon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].icon
                      : null,
                  height: getSize(
                    23,
                  ),
                  width: getSize(
                    23,
                  ),
                  color: appTheme.whiteA700,
                ),
                activeIcon: CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].activeIcon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].activeIcon
                      : null,
                  height: getVerticalSize(
                    28,
                  ),
                  width: getHorizontalSize(
                    35,
                  ),
                  color: appTheme.gray90007,
                ),
                label: '',
              );
            }),
            onTap: (index) {
              selectedIndex = index;
              widget.onChanged?.call(bottomMenuList[index].type);
              setState(() {});
            },
          ),
        ),
      ],
    );
  }
}

enum BottomBarEnum {
  Swipe,
  Users,
  Chats,
  User24x21,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isCircle = false,
    this.isPng = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isCircle;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
