// ignore_for_file: must_be_immutable

part of 'message_menu_popup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageMenuPopup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessageMenuPopupEvent extends Equatable {}

/// Event that is dispatched when the MessageMenuPopup widget is first created.
class MessageMenuPopupInitialEvent extends MessageMenuPopupEvent {
  @override
  List<Object?> get props => [];
}
