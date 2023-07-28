import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/dating_matches_tab_container_screen/models/dating_matches_tab_container_model.dart';part 'dating_matches_tab_container_event.dart';part 'dating_matches_tab_container_state.dart';/// A bloc that manages the state of a DatingMatchesTabContainer according to the event that is dispatched to it.
class DatingMatchesTabContainerBloc extends Bloc<DatingMatchesTabContainerEvent, DatingMatchesTabContainerState> {DatingMatchesTabContainerBloc(DatingMatchesTabContainerState initialState) : super(initialState) { on<DatingMatchesTabContainerInitialEvent>(_onInitialize); }

_onInitialize(DatingMatchesTabContainerInitialEvent event, Emitter<DatingMatchesTabContainerState> emit, ) async  {  } 
 }
