import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/users_container_screen/models/users_container_model.dart';part 'users_container_event.dart';part 'users_container_state.dart';/// A bloc that manages the state of a UsersContainer according to the event that is dispatched to it.
class UsersContainerBloc extends Bloc<UsersContainerEvent, UsersContainerState> {UsersContainerBloc(UsersContainerState initialState) : super(initialState) { on<UsersContainerInitialEvent>(_onInitialize); }

_onInitialize(UsersContainerInitialEvent event, Emitter<UsersContainerState> emit, ) async  {  } 
 }
