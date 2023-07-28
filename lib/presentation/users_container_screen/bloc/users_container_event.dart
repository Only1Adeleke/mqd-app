// ignore_for_file: must_be_immutable

part of 'users_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UsersContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UsersContainerEvent extends Equatable {}

/// Event that is dispatched when the UsersContainer widget is first created.
class UsersContainerInitialEvent extends UsersContainerEvent {
  @override
  List<Object?> get props => [];
}
