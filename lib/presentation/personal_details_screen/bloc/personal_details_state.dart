// ignore_for_file: must_be_immutable

part of 'personal_details_bloc.dart';

/// Represents the state of PersonalDetails in the application.
class PersonalDetailsState extends Equatable {
  PersonalDetailsState({
    this.firstnameoneController,
    this.personalDetailsModelObj,
  });

  TextEditingController? firstnameoneController;

  PersonalDetailsModel? personalDetailsModelObj;

  @override
  List<Object?> get props => [
        firstnameoneController,
        personalDetailsModelObj,
      ];
  PersonalDetailsState copyWith({
    TextEditingController? firstnameoneController,
    PersonalDetailsModel? personalDetailsModelObj,
  }) {
    return PersonalDetailsState(
      firstnameoneController:
          firstnameoneController ?? this.firstnameoneController,
      personalDetailsModelObj:
          personalDetailsModelObj ?? this.personalDetailsModelObj,
    );
  }
}
