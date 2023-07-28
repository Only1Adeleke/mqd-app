import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/user_details_tab_container_screen/models/user_details_tab_container_model.dart';part 'user_details_tab_container_event.dart';part 'user_details_tab_container_state.dart';/// A bloc that manages the state of a UserDetailsTabContainer according to the event that is dispatched to it.
class UserDetailsTabContainerBloc extends Bloc<UserDetailsTabContainerEvent, UserDetailsTabContainerState> {UserDetailsTabContainerBloc(UserDetailsTabContainerState initialState) : super(initialState) { on<UserDetailsTabContainerInitialEvent>(_onInitialize); }

_onInitialize(UserDetailsTabContainerInitialEvent event, Emitter<UserDetailsTabContainerState> emit, ) async  {  } 
 }
