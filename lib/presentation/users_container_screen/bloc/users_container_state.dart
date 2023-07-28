// ignore_for_file: must_be_immutable

part of 'users_container_bloc.dart';

/// Represents the state of UsersContainer in the application.
class UsersContainerState extends Equatable {
  UsersContainerState({this.usersContainerModelObj});

  UsersContainerModel? usersContainerModelObj;

  @override
  List<Object?> get props => [
        usersContainerModelObj,
      ];
  UsersContainerState copyWith({UsersContainerModel? usersContainerModelObj}) {
    return UsersContainerState(
      usersContainerModelObj:
          usersContainerModelObj ?? this.usersContainerModelObj,
    );
  }
}
