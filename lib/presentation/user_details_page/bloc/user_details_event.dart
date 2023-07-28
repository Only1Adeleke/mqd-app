// ignore_for_file: must_be_immutable

part of 'user_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserDetailsEvent extends Equatable {}

/// Event that is dispatched when the UserDetails widget is first created.
class UserDetailsInitialEvent extends UserDetailsEvent {
  @override
  List<Object?> get props => [];
}
