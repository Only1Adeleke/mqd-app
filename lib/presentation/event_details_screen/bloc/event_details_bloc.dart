import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/event_details_screen/models/event_details_model.dart';part 'event_details_event.dart';part 'event_details_state.dart';/// A bloc that manages the state of a EventDetails according to the event that is dispatched to it.
class EventDetailsBloc extends Bloc<EventDetailsEvent, EventDetailsState> {EventDetailsBloc(EventDetailsState initialState) : super(initialState) { on<EventDetailsInitialEvent>(_onInitialize); }

_onInitialize(EventDetailsInitialEvent event, Emitter<EventDetailsState> emit, ) async  {  } 
 }
