// ignore_for_file: must_be_immutable

part of 'user_details_tab_container_bloc.dart';

/// Represents the state of UserDetailsTabContainer in the application.
class UserDetailsTabContainerState extends Equatable {
  UserDetailsTabContainerState({this.userDetailsTabContainerModelObj});

  UserDetailsTabContainerModel? userDetailsTabContainerModelObj;

  @override
  List<Object?> get props => [
        userDetailsTabContainerModelObj,
      ];
  UserDetailsTabContainerState copyWith(
      {UserDetailsTabContainerModel? userDetailsTabContainerModelObj}) {
    return UserDetailsTabContainerState(
      userDetailsTabContainerModelObj: userDetailsTabContainerModelObj ??
          this.userDetailsTabContainerModelObj,
    );
  }
}
