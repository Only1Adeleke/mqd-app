// ignore_for_file: must_be_immutable

part of 'dating_matches_bloc.dart';

/// Represents the state of DatingMatches in the application.
class DatingMatchesState extends Equatable {
  DatingMatchesState({this.datingMatchesModelObj});

  DatingMatchesModel? datingMatchesModelObj;

  @override
  List<Object?> get props => [
        datingMatchesModelObj,
      ];
  DatingMatchesState copyWith({DatingMatchesModel? datingMatchesModelObj}) {
    return DatingMatchesState(
      datingMatchesModelObj:
          datingMatchesModelObj ?? this.datingMatchesModelObj,
    );
  }
}
