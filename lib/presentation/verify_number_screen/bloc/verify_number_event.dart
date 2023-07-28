// ignore_for_file: must_be_immutable

part of 'verify_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VerifyNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VerifyNumberEvent extends Equatable {}

/// Event that is dispatched when the VerifyNumber widget is first created.
class VerifyNumberInitialEvent extends VerifyNumberEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerifyNumberEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
