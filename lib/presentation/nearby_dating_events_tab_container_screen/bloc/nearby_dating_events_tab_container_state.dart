// ignore_for_file: must_be_immutable

part of 'nearby_dating_events_tab_container_bloc.dart';

/// Represents the state of NearbyDatingEventsTabContainer in the application.
class NearbyDatingEventsTabContainerState extends Equatable {
  NearbyDatingEventsTabContainerState({
    this.searchController,
    this.nearbyDatingEventsTabContainerModelObj,
  });

  TextEditingController? searchController;

  NearbyDatingEventsTabContainerModel? nearbyDatingEventsTabContainerModelObj;

  @override
  List<Object?> get props => [
        searchController,
        nearbyDatingEventsTabContainerModelObj,
      ];
  NearbyDatingEventsTabContainerState copyWith({
    TextEditingController? searchController,
    NearbyDatingEventsTabContainerModel? nearbyDatingEventsTabContainerModelObj,
  }) {
    return NearbyDatingEventsTabContainerState(
      searchController: searchController ?? this.searchController,
      nearbyDatingEventsTabContainerModelObj:
          nearbyDatingEventsTabContainerModelObj ??
              this.nearbyDatingEventsTabContainerModelObj,
    );
  }
}
