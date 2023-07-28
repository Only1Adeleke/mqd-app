// ignore_for_file: must_be_immutable

part of 'users_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Users widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UsersEvent extends Equatable {}

/// Event that is dispatched when the Users widget is first created.
class UsersInitialEvent extends UsersEvent {
  @override
  List<Object?> get props => [];
}
