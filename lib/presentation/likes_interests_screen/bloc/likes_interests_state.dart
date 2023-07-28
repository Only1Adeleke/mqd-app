// ignore_for_file: must_be_immutable

part of 'likes_interests_bloc.dart';

/// Represents the state of LikesInterests in the application.
class LikesInterestsState extends Equatable {
  LikesInterestsState({this.likesInterestsModelObj});

  LikesInterestsModel? likesInterestsModelObj;

  @override
  List<Object?> get props => [
        likesInterestsModelObj,
      ];
  LikesInterestsState copyWith({LikesInterestsModel? likesInterestsModelObj}) {
    return LikesInterestsState(
      likesInterestsModelObj:
          likesInterestsModelObj ?? this.likesInterestsModelObj,
    );
  }
}
