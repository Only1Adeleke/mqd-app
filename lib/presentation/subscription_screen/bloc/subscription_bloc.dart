import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/subscription_item_model.dart';import 'package:mqd_v1/presentation/subscription_screen/models/subscription_model.dart';part 'subscription_event.dart';part 'subscription_state.dart';/// A bloc that manages the state of a Subscription according to the event that is dispatched to it.
class SubscriptionBloc extends Bloc<SubscriptionEvent, SubscriptionState> {SubscriptionBloc(SubscriptionState initialState) : super(initialState) { on<SubscriptionInitialEvent>(_onInitialize); }

_onInitialize(SubscriptionInitialEvent event, Emitter<SubscriptionState> emit, ) async  { emit(state.copyWith(subscriptionModelObj: state.subscriptionModelObj?.copyWith(subscriptionItemList: fillSubscriptionItemList()))); } 
List<SubscriptionItemModel> fillSubscriptionItemList() { return List.generate(3, (index) => SubscriptionItemModel()); } 
 }
