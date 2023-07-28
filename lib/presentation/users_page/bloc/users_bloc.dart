import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/users_page/models/users_model.dart';
part 'users_event.dart';
part 'users_state.dart';

/// A bloc that manages the state of a Users according to the event that is dispatched to it.
class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(UsersState initialState) : super(initialState) {
    on<UsersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UsersInitialEvent event,
    Emitter<UsersState> emit,
  ) async {}
}
