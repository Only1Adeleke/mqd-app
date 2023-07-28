// ignore_for_file: must_be_immutable

part of 'user_details_menu_bloc.dart';

/// Represents the state of UserDetailsMenu in the application.
class UserDetailsMenuState extends Equatable {
  UserDetailsMenuState({this.userDetailsMenuModelObj});

  UserDetailsMenuModel? userDetailsMenuModelObj;

  @override
  List<Object?> get props => [
        userDetailsMenuModelObj,
      ];
  UserDetailsMenuState copyWith(
      {UserDetailsMenuModel? userDetailsMenuModelObj}) {
    return UserDetailsMenuState(
      userDetailsMenuModelObj:
          userDetailsMenuModelObj ?? this.userDetailsMenuModelObj,
    );
  }
}
