// ignore_for_file: must_be_immutable

part of 'home_swipe_bloc.dart';

/// Represents the state of HomeSwipe in the application.
class HomeSwipeState extends Equatable {
  HomeSwipeState({this.homeSwipeModelObj});

  HomeSwipeModel? homeSwipeModelObj;

  @override
  List<Object?> get props => [
        homeSwipeModelObj,
      ];
  HomeSwipeState copyWith({HomeSwipeModel? homeSwipeModelObj}) {
    return HomeSwipeState(
      homeSwipeModelObj: homeSwipeModelObj ?? this.homeSwipeModelObj,
    );
  }
}
