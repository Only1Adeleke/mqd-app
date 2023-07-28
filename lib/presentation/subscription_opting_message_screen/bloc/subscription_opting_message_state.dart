// ignore_for_file: must_be_immutable

part of 'subscription_opting_message_bloc.dart';

/// Represents the state of SubscriptionOptingMessage in the application.
class SubscriptionOptingMessageState extends Equatable {
  SubscriptionOptingMessageState({this.subscriptionOptingMessageModelObj});

  SubscriptionOptingMessageModel? subscriptionOptingMessageModelObj;

  @override
  List<Object?> get props => [
        subscriptionOptingMessageModelObj,
      ];
  SubscriptionOptingMessageState copyWith(
      {SubscriptionOptingMessageModel? subscriptionOptingMessageModelObj}) {
    return SubscriptionOptingMessageState(
      subscriptionOptingMessageModelObj: subscriptionOptingMessageModelObj ??
          this.subscriptionOptingMessageModelObj,
    );
  }
}
