// ignore_for_file: must_be_immutable

part of 'sign_up_with_phone_number_bloc.dart';

/// Represents the state of SignUpWithPhoneNumber in the application.
class SignUpWithPhoneNumberState extends Equatable {
  SignUpWithPhoneNumberState({this.signUpWithPhoneNumberModelObj});

  SignUpWithPhoneNumberModel? signUpWithPhoneNumberModelObj;

  @override
  List<Object?> get props => [
        signUpWithPhoneNumberModelObj,
      ];
  SignUpWithPhoneNumberState copyWith(
      {SignUpWithPhoneNumberModel? signUpWithPhoneNumberModelObj}) {
    return SignUpWithPhoneNumberState(
      signUpWithPhoneNumberModelObj:
          signUpWithPhoneNumberModelObj ?? this.signUpWithPhoneNumberModelObj,
    );
  }
}
