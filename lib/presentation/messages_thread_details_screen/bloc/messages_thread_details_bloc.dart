import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/messages_thread_details_screen/models/messages_thread_details_model.dart';part 'messages_thread_details_event.dart';part 'messages_thread_details_state.dart';/// A bloc that manages the state of a MessagesThreadDetails according to the event that is dispatched to it.
class MessagesThreadDetailsBloc extends Bloc<MessagesThreadDetailsEvent, MessagesThreadDetailsState> {MessagesThreadDetailsBloc(MessagesThreadDetailsState initialState) : super(initialState) { on<MessagesThreadDetailsInitialEvent>(_onInitialize); }

_onInitialize(MessagesThreadDetailsInitialEvent event, Emitter<MessagesThreadDetailsState> emit, ) async  {  } 
 }
