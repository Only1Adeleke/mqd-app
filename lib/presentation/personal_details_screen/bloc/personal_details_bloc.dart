import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/personal_details_screen/models/personal_details_model.dart';part 'personal_details_event.dart';part 'personal_details_state.dart';/// A bloc that manages the state of a PersonalDetails according to the event that is dispatched to it.
class PersonalDetailsBloc extends Bloc<PersonalDetailsEvent, PersonalDetailsState> {PersonalDetailsBloc(PersonalDetailsState initialState) : super(initialState) { on<PersonalDetailsInitialEvent>(_onInitialize); }

_onInitialize(PersonalDetailsInitialEvent event, Emitter<PersonalDetailsState> emit, ) async  { emit(state.copyWith(firstnameoneController: TextEditingController())); } 
 }
