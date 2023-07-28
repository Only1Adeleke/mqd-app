// ignore_for_file: must_be_immutable

part of 'users_bloc.dart';

/// Represents the state of Users in the application.
class UsersState extends Equatable {
  UsersState({this.usersModelObj});

  UsersModel? usersModelObj;

  @override
  List<Object?> get props => [
        usersModelObj,
      ];
  UsersState copyWith({UsersModel? usersModelObj}) {
    return UsersState(
      usersModelObj: usersModelObj ?? this.usersModelObj,
    );
  }
}
