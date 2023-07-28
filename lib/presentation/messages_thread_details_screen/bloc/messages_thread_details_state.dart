// ignore_for_file: must_be_immutable

part of 'messages_thread_details_bloc.dart';

/// Represents the state of MessagesThreadDetails in the application.
class MessagesThreadDetailsState extends Equatable {
  MessagesThreadDetailsState({this.messagesThreadDetailsModelObj});

  MessagesThreadDetailsModel? messagesThreadDetailsModelObj;

  @override
  List<Object?> get props => [
        messagesThreadDetailsModelObj,
      ];
  MessagesThreadDetailsState copyWith(
      {MessagesThreadDetailsModel? messagesThreadDetailsModelObj}) {
    return MessagesThreadDetailsState(
      messagesThreadDetailsModelObj:
          messagesThreadDetailsModelObj ?? this.messagesThreadDetailsModelObj,
    );
  }
}
