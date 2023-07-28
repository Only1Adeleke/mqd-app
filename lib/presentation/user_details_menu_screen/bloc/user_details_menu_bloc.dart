import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/user_details_menu_screen/models/user_details_menu_model.dart';
part 'user_details_menu_event.dart';
part 'user_details_menu_state.dart';

/// A bloc that manages the state of a UserDetailsMenu according to the event that is dispatched to it.
class UserDetailsMenuBloc
    extends Bloc<UserDetailsMenuEvent, UserDetailsMenuState> {
  UserDetailsMenuBloc(UserDetailsMenuState initialState) : super(initialState) {
    on<UserDetailsMenuInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserDetailsMenuInitialEvent event,
    Emitter<UserDetailsMenuState> emit,
  ) async {}
}
