// ignore_for_file: must_be_immutable

part of 'message_menu_popup_bloc.dart';

/// Represents the state of MessageMenuPopup in the application.
class MessageMenuPopupState extends Equatable {
  MessageMenuPopupState({this.messageMenuPopupModelObj});

  MessageMenuPopupModel? messageMenuPopupModelObj;

  @override
  List<Object?> get props => [
        messageMenuPopupModelObj,
      ];
  MessageMenuPopupState copyWith(
      {MessageMenuPopupModel? messageMenuPopupModelObj}) {
    return MessageMenuPopupState(
      messageMenuPopupModelObj:
          messageMenuPopupModelObj ?? this.messageMenuPopupModelObj,
    );
  }
}
