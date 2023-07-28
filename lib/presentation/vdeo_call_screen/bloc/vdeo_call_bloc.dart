import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/vdeo_call_screen/models/vdeo_call_model.dart';part 'vdeo_call_event.dart';part 'vdeo_call_state.dart';/// A bloc that manages the state of a VdeoCall according to the event that is dispatched to it.
class VdeoCallBloc extends Bloc<VdeoCallEvent, VdeoCallState> {VdeoCallBloc(VdeoCallState initialState) : super(initialState) { on<VdeoCallInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<VdeoCallState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
_onInitialize(VdeoCallInitialEvent event, Emitter<VdeoCallState> emit, ) async  { emit(state.copyWith(radioGroup: "")); } 
 }
