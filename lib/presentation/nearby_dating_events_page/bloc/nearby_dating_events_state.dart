// ignore_for_file: must_be_immutable

part of 'nearby_dating_events_bloc.dart';

/// Represents the state of NearbyDatingEvents in the application.
class NearbyDatingEventsState extends Equatable {
  NearbyDatingEventsState({this.nearbyDatingEventsModelObj});

  NearbyDatingEventsModel? nearbyDatingEventsModelObj;

  @override
  List<Object?> get props => [
        nearbyDatingEventsModelObj,
      ];
  NearbyDatingEventsState copyWith(
      {NearbyDatingEventsModel? nearbyDatingEventsModelObj}) {
    return NearbyDatingEventsState(
      nearbyDatingEventsModelObj:
          nearbyDatingEventsModelObj ?? this.nearbyDatingEventsModelObj,
    );
  }
}
