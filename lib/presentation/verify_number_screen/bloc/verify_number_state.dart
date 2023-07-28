// ignore_for_file: must_be_immutable

part of 'verify_number_bloc.dart';

/// Represents the state of VerifyNumber in the application.
class VerifyNumberState extends Equatable {
  VerifyNumberState({
    this.otpController,
    this.verifyNumberModelObj,
  });

  TextEditingController? otpController;

  VerifyNumberModel? verifyNumberModelObj;

  @override
  List<Object?> get props => [
        otpController,
        verifyNumberModelObj,
      ];
  VerifyNumberState copyWith({
    TextEditingController? otpController,
    VerifyNumberModel? verifyNumberModelObj,
  }) {
    return VerifyNumberState(
      otpController: otpController ?? this.otpController,
      verifyNumberModelObj: verifyNumberModelObj ?? this.verifyNumberModelObj,
    );
  }
}
