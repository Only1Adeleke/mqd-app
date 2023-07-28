import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/verify_number_screen/models/verify_number_model.dart';import 'package:sms_autofill/sms_autofill.dart';part 'verify_number_event.dart';part 'verify_number_state.dart';/// A bloc that manages the state of a VerifyNumber according to the event that is dispatched to it.
class VerifyNumberBloc extends Bloc<VerifyNumberEvent, VerifyNumberState> with  CodeAutoFill {VerifyNumberBloc(VerifyNumberState initialState) : super(initialState) { on<VerifyNumberInitialEvent>(_onInitialize); on<ChangeOTPEvent>(_changeOTP); }

@override codeUpdated() { add(ChangeOTPEvent(code: code!)); } 
_changeOTP(ChangeOTPEvent event, Emitter<VerifyNumberState> emit, ) { emit(state.copyWith(otpController: TextEditingController(text: event.code))); } 
_onInitialize(VerifyNumberInitialEvent event, Emitter<VerifyNumberState> emit, ) async  { emit(state.copyWith(otpController: TextEditingController())); listenForCode(); } 
 }
