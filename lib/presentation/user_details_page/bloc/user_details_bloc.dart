import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/user_details_page/models/user_details_model.dart';
part 'user_details_event.dart';
part 'user_details_state.dart';

/// A bloc that manages the state of a UserDetails according to the event that is dispatched to it.
class UserDetailsBloc extends Bloc<UserDetailsEvent, UserDetailsState> {
  UserDetailsBloc(UserDetailsState initialState) : super(initialState) {
    on<UserDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserDetailsInitialEvent event,
    Emitter<UserDetailsState> emit,
  ) async {}
}
