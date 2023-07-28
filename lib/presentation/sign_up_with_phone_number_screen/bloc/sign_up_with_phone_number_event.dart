// ignore_for_file: must_be_immutable

part of 'sign_up_with_phone_number_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignUpWithPhoneNumber widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignUpWithPhoneNumberEvent extends Equatable {}

/// Event that is dispatched when the SignUpWithPhoneNumber widget is first created.
class SignUpWithPhoneNumberInitialEvent extends SignUpWithPhoneNumberEvent {
  @override
  List<Object?> get props => [];
}
