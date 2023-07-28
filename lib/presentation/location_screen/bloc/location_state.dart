// ignore_for_file: must_be_immutable

part of 'location_bloc.dart';

/// Represents the state of Location in the application.
class LocationState extends Equatable {
  LocationState({
    this.locationoneController,
    this.searchController,
    this.locationModelObj,
  });

  TextEditingController? locationoneController;

  TextEditingController? searchController;

  LocationModel? locationModelObj;

  @override
  List<Object?> get props => [
        locationoneController,
        searchController,
        locationModelObj,
      ];
  LocationState copyWith({
    TextEditingController? locationoneController,
    TextEditingController? searchController,
    LocationModel? locationModelObj,
  }) {
    return LocationState(
      locationoneController:
          locationoneController ?? this.locationoneController,
      searchController: searchController ?? this.searchController,
      locationModelObj: locationModelObj ?? this.locationModelObj,
    );
  }
}
