import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/home_swipe_screen/models/home_swipe_model.dart';part 'home_swipe_event.dart';part 'home_swipe_state.dart';/// A bloc that manages the state of a HomeSwipe according to the event that is dispatched to it.
class HomeSwipeBloc extends Bloc<HomeSwipeEvent, HomeSwipeState> {HomeSwipeBloc(HomeSwipeState initialState) : super(initialState) { on<HomeSwipeInitialEvent>(_onInitialize); }

_onInitialize(HomeSwipeInitialEvent event, Emitter<HomeSwipeState> emit, ) async  {  } 
 }
