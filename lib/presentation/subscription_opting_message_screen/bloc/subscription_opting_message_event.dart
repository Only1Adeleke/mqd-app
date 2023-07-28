// ignore_for_file: must_be_immutable

part of 'subscription_opting_message_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SubscriptionOptingMessage widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubscriptionOptingMessageEvent extends Equatable {}

/// Event that is dispatched when the SubscriptionOptingMessage widget is first created.
class SubscriptionOptingMessageInitialEvent
    extends SubscriptionOptingMessageEvent {
  @override
  List<Object?> get props => [];
}
