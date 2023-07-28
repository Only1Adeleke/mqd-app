// ignore_for_file: must_be_immutable

part of 'unmatch_bloc.dart';

/// Represents the state of Unmatch in the application.
class UnmatchState extends Equatable {
  UnmatchState({this.unmatchModelObj});

  UnmatchModel? unmatchModelObj;

  @override
  List<Object?> get props => [
        unmatchModelObj,
      ];
  UnmatchState copyWith({UnmatchModel? unmatchModelObj}) {
    return UnmatchState(
      unmatchModelObj: unmatchModelObj ?? this.unmatchModelObj,
    );
  }
}
