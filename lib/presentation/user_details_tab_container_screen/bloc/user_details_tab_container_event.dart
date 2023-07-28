// ignore_for_file: must_be_immutable

part of 'user_details_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserDetailsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserDetailsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the UserDetailsTabContainer widget is first created.
class UserDetailsTabContainerInitialEvent extends UserDetailsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
