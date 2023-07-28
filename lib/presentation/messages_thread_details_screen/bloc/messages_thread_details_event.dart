// ignore_for_file: must_be_immutable

part of 'messages_thread_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessagesThreadDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MessagesThreadDetailsEvent extends Equatable {}

/// Event that is dispatched when the MessagesThreadDetails widget is first created.
class MessagesThreadDetailsInitialEvent extends MessagesThreadDetailsEvent {
  @override
  List<Object?> get props => [];
}
