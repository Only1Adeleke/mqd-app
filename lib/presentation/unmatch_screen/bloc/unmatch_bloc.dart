import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/unmatch_screen/models/unmatch_model.dart';
part 'unmatch_event.dart';
part 'unmatch_state.dart';

/// A bloc that manages the state of a Unmatch according to the event that is dispatched to it.
class UnmatchBloc extends Bloc<UnmatchEvent, UnmatchState> {
  UnmatchBloc(UnmatchState initialState) : super(initialState) {
    on<UnmatchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UnmatchInitialEvent event,
    Emitter<UnmatchState> emit,
  ) async {}
}
