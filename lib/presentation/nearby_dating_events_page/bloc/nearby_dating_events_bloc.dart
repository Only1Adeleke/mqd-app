import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listeventtype_item_model.dart';
import 'package:mqd_v1/presentation/nearby_dating_events_page/models/nearby_dating_events_model.dart';
part 'nearby_dating_events_event.dart';
part 'nearby_dating_events_state.dart';

/// A bloc that manages the state of a NearbyDatingEvents according to the event that is dispatched to it.
class NearbyDatingEventsBloc
    extends Bloc<NearbyDatingEventsEvent, NearbyDatingEventsState> {
  NearbyDatingEventsBloc(NearbyDatingEventsState initialState)
      : super(initialState) {
    on<NearbyDatingEventsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NearbyDatingEventsInitialEvent event,
    Emitter<NearbyDatingEventsState> emit,
  ) async {
    emit(state.copyWith(
        nearbyDatingEventsModelObj: state.nearbyDatingEventsModelObj?.copyWith(
      listeventtypeItemList: fillListeventtypeItemList(),
    )));
  }

  List<ListeventtypeItemModel> fillListeventtypeItemList() {
    return List.generate(3, (index) => ListeventtypeItemModel());
  }
}
