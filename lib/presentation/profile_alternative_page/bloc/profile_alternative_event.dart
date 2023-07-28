// ignore_for_file: must_be_immutable

part of 'profile_alternative_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ProfileAlternative widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ProfileAlternativeEvent extends Equatable {}

/// Event that is dispatched when the ProfileAlternative widget is first created.
class ProfileAlternativeInitialEvent extends ProfileAlternativeEvent {
  @override
  List<Object?> get props => [];
}
