import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/subscription_opting_message_screen/models/subscription_opting_message_model.dart';
part 'subscription_opting_message_event.dart';
part 'subscription_opting_message_state.dart';

/// A bloc that manages the state of a SubscriptionOptingMessage according to the event that is dispatched to it.
class SubscriptionOptingMessageBloc extends Bloc<SubscriptionOptingMessageEvent,
    SubscriptionOptingMessageState> {
  SubscriptionOptingMessageBloc(SubscriptionOptingMessageState initialState)
      : super(initialState) {
    on<SubscriptionOptingMessageInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SubscriptionOptingMessageInitialEvent event,
    Emitter<SubscriptionOptingMessageState> emit,
  ) async {}
}
