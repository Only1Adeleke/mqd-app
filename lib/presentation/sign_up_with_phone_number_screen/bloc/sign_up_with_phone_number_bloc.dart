import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/sign_up_with_phone_number_screen/models/sign_up_with_phone_number_model.dart';part 'sign_up_with_phone_number_event.dart';part 'sign_up_with_phone_number_state.dart';/// A bloc that manages the state of a SignUpWithPhoneNumber according to the event that is dispatched to it.
class SignUpWithPhoneNumberBloc extends Bloc<SignUpWithPhoneNumberEvent, SignUpWithPhoneNumberState> {SignUpWithPhoneNumberBloc(SignUpWithPhoneNumberState initialState) : super(initialState) { on<SignUpWithPhoneNumberInitialEvent>(_onInitialize); }

_onInitialize(SignUpWithPhoneNumberInitialEvent event, Emitter<SignUpWithPhoneNumberState> emit, ) async  {  } 
 }
