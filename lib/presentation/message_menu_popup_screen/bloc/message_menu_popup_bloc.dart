import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/message_menu_popup_screen/models/message_menu_popup_model.dart';
part 'message_menu_popup_event.dart';
part 'message_menu_popup_state.dart';

/// A bloc that manages the state of a MessageMenuPopup according to the event that is dispatched to it.
class MessageMenuPopupBloc
    extends Bloc<MessageMenuPopupEvent, MessageMenuPopupState> {
  MessageMenuPopupBloc(MessageMenuPopupState initialState)
      : super(initialState) {
    on<MessageMenuPopupInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MessageMenuPopupInitialEvent event,
    Emitter<MessageMenuPopupState> emit,
  ) async {}
}
