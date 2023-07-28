// ignore_for_file: must_be_immutable

part of 'match_bloc.dart';

/// Represents the state of Match in the application.
class MatchState extends Equatable {
  MatchState({this.matchModelObj});

  MatchModel? matchModelObj;

  @override
  List<Object?> get props => [
        matchModelObj,
      ];
  MatchState copyWith({MatchModel? matchModelObj}) {
    return MatchState(
      matchModelObj: matchModelObj ?? this.matchModelObj,
    );
  }
}
