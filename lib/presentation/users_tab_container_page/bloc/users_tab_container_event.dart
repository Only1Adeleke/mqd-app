// ignore_for_file: must_be_immutable

part of 'users_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UsersTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UsersTabContainerEvent extends Equatable {}

/// Event that is dispatched when the UsersTabContainer widget is first created.
class UsersTabContainerInitialEvent extends UsersTabContainerEvent {
  @override
  List<Object?> get props => [];
}
