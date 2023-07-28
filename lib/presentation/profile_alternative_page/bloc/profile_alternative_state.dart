// ignore_for_file: must_be_immutable

part of 'profile_alternative_bloc.dart';

/// Represents the state of ProfileAlternative in the application.
class ProfileAlternativeState extends Equatable {
  ProfileAlternativeState({this.profileAlternativeModelObj});

  ProfileAlternativeModel? profileAlternativeModelObj;

  @override
  List<Object?> get props => [
        profileAlternativeModelObj,
      ];
  ProfileAlternativeState copyWith(
      {ProfileAlternativeModel? profileAlternativeModelObj}) {
    return ProfileAlternativeState(
      profileAlternativeModelObj:
          profileAlternativeModelObj ?? this.profileAlternativeModelObj,
    );
  }
}
