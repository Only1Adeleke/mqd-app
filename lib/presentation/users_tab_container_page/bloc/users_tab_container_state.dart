// ignore_for_file: must_be_immutable

part of 'users_tab_container_bloc.dart';

/// Represents the state of UsersTabContainer in the application.
class UsersTabContainerState extends Equatable {
  UsersTabContainerState({this.usersTabContainerModelObj});

  UsersTabContainerModel? usersTabContainerModelObj;

  @override
  List<Object?> get props => [
        usersTabContainerModelObj,
      ];
  UsersTabContainerState copyWith(
      {UsersTabContainerModel? usersTabContainerModelObj}) {
    return UsersTabContainerState(
      usersTabContainerModelObj:
          usersTabContainerModelObj ?? this.usersTabContainerModelObj,
    );
  }
}
