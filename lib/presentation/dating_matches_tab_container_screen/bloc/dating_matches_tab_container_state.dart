// ignore_for_file: must_be_immutable

part of 'dating_matches_tab_container_bloc.dart';

/// Represents the state of DatingMatchesTabContainer in the application.
class DatingMatchesTabContainerState extends Equatable {
  DatingMatchesTabContainerState({this.datingMatchesTabContainerModelObj});

  DatingMatchesTabContainerModel? datingMatchesTabContainerModelObj;

  @override
  List<Object?> get props => [
        datingMatchesTabContainerModelObj,
      ];
  DatingMatchesTabContainerState copyWith(
      {DatingMatchesTabContainerModel? datingMatchesTabContainerModelObj}) {
    return DatingMatchesTabContainerState(
      datingMatchesTabContainerModelObj: datingMatchesTabContainerModelObj ??
          this.datingMatchesTabContainerModelObj,
    );
  }
}
