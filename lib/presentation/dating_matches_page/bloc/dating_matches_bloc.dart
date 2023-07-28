import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dating_matches_item_model.dart';
import 'package:mqd_v1/presentation/dating_matches_page/models/dating_matches_model.dart';
part 'dating_matches_event.dart';
part 'dating_matches_state.dart';

/// A bloc that manages the state of a DatingMatches according to the event that is dispatched to it.
class DatingMatchesBloc extends Bloc<DatingMatchesEvent, DatingMatchesState> {
  DatingMatchesBloc(DatingMatchesState initialState) : super(initialState) {
    on<DatingMatchesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DatingMatchesInitialEvent event,
    Emitter<DatingMatchesState> emit,
  ) async {
    emit(state.copyWith(
        datingMatchesModelObj: state.datingMatchesModelObj?.copyWith(
      datingMatchesItemList: fillDatingMatchesItemList(),
    )));
  }

  List<DatingMatchesItemModel> fillDatingMatchesItemList() {
    return List.generate(6, (index) => DatingMatchesItemModel());
  }
}
