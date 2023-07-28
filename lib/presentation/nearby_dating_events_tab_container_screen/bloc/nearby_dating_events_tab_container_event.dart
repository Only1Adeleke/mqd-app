// ignore_for_file: must_be_immutable

part of 'nearby_dating_events_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///NearbyDatingEventsTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class NearbyDatingEventsTabContainerEvent extends Equatable {}

/// Event that is dispatched when the NearbyDatingEventsTabContainer widget is first created.
class NearbyDatingEventsTabContainerInitialEvent
    extends NearbyDatingEventsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
