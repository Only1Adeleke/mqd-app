// ignore_for_file: must_be_immutable

part of 'nearby_dating_events_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NearbyDatingEvents widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NearbyDatingEventsEvent extends Equatable {}

/// Event that is dispatched when the NearbyDatingEvents widget is first created.
class NearbyDatingEventsInitialEvent extends NearbyDatingEventsEvent {
  @override
  List<Object?> get props => [];
}
