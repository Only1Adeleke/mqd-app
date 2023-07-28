// ignore_for_file: must_be_immutable

part of 'user_details_menu_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///UserDetailsMenu widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UserDetailsMenuEvent extends Equatable {}

/// Event that is dispatched when the UserDetailsMenu widget is first created.
class UserDetailsMenuInitialEvent extends UserDetailsMenuEvent {
  @override
  List<Object?> get props => [];
}
