// ignore_for_file: must_be_immutable

part of 'event_details_bloc.dart';

/// Represents the state of EventDetails in the application.
class EventDetailsState extends Equatable {
  EventDetailsState({this.eventDetailsModelObj});

  EventDetailsModel? eventDetailsModelObj;

  @override
  List<Object?> get props => [
        eventDetailsModelObj,
      ];
  EventDetailsState copyWith({EventDetailsModel? eventDetailsModelObj}) {
    return EventDetailsState(
      eventDetailsModelObj: eventDetailsModelObj ?? this.eventDetailsModelObj,
    );
  }
}
