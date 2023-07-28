// ignore_for_file: must_be_immutable

part of 'user_details_bloc.dart';

/// Represents the state of UserDetails in the application.
class UserDetailsState extends Equatable {
  UserDetailsState({this.userDetailsModelObj});

  UserDetailsModel? userDetailsModelObj;

  @override
  List<Object?> get props => [
        userDetailsModelObj,
      ];
  UserDetailsState copyWith({UserDetailsModel? userDetailsModelObj}) {
    return UserDetailsState(
      userDetailsModelObj: userDetailsModelObj ?? this.userDetailsModelObj,
    );
  }
}
