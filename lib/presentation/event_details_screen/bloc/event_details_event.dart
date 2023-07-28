// ignore_for_file: must_be_immutable

part of 'event_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///EventDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class EventDetailsEvent extends Equatable {}

/// Event that is dispatched when the EventDetails widget is first created.
class EventDetailsInitialEvent extends EventDetailsEvent {
  @override
  List<Object?> get props => [];
}
