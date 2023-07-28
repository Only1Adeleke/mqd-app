import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/matchesthumbs_item_model.dart';
import '../models/listbg_item_model.dart';
import 'package:mqd_v1/presentation/messages_screen/models/messages_model.dart';
part 'messages_event.dart';
part 'messages_state.dart';

/// A bloc that manages the state of a Messages according to the event that is dispatched to it.
class MessagesBloc extends Bloc<MessagesEvent, MessagesState> {
  MessagesBloc(MessagesState initialState) : super(initialState) {
    on<MessagesInitialEvent>(_onInitialize);
  }

  List<MatchesthumbsItemModel> fillMatchesthumbsItemList() {
    return List.generate(1, (index) => MatchesthumbsItemModel());
  }

  List<ListbgItemModel> fillListbgItemList() {
    return List.generate(5, (index) => ListbgItemModel());
  }

  _onInitialize(
    MessagesInitialEvent event,
    Emitter<MessagesState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        messagesModelObj: state.messagesModelObj?.copyWith(
      matchesthumbsItemList: fillMatchesthumbsItemList(),
      listbgItemList: fillListbgItemList(),
    )));
  }
}
