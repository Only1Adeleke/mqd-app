import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/match_screen/models/match_model.dart';
part 'match_event.dart';
part 'match_state.dart';

/// A bloc that manages the state of a Match according to the event that is dispatched to it.
class MatchBloc extends Bloc<MatchEvent, MatchState> {
  MatchBloc(MatchState initialState) : super(initialState) {
    on<MatchInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MatchInitialEvent event,
    Emitter<MatchState> emit,
  ) async {}
}
