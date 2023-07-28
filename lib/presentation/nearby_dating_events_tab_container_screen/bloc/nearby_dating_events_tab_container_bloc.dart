import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/nearby_dating_events_tab_container_screen/models/nearby_dating_events_tab_container_model.dart';part 'nearby_dating_events_tab_container_event.dart';part 'nearby_dating_events_tab_container_state.dart';/// A bloc that manages the state of a NearbyDatingEventsTabContainer according to the event that is dispatched to it.
class NearbyDatingEventsTabContainerBloc extends Bloc<NearbyDatingEventsTabContainerEvent, NearbyDatingEventsTabContainerState> {NearbyDatingEventsTabContainerBloc(NearbyDatingEventsTabContainerState initialState) : super(initialState) { on<NearbyDatingEventsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(NearbyDatingEventsTabContainerInitialEvent event, Emitter<NearbyDatingEventsTabContainerState> emit, ) async  { emit(state.copyWith(searchController: TextEditingController())); } 
 }
