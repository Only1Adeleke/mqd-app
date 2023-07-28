import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listaddicon_item_model.dart';
import 'package:mqd_v1/presentation/users_tab_container_page/models/users_tab_container_model.dart';
part 'users_tab_container_event.dart';
part 'users_tab_container_state.dart';

/// A bloc that manages the state of a UsersTabContainer according to the event that is dispatched to it.
class UsersTabContainerBloc
    extends Bloc<UsersTabContainerEvent, UsersTabContainerState> {
  UsersTabContainerBloc(UsersTabContainerState initialState)
      : super(initialState) {
    on<UsersTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UsersTabContainerInitialEvent event,
    Emitter<UsersTabContainerState> emit,
  ) async {
    emit(state.copyWith(
        usersTabContainerModelObj: state.usersTabContainerModelObj?.copyWith(
      listaddiconItemList: fillListaddiconItemList(),
    )));
  }

  List<ListaddiconItemModel> fillListaddiconItemList() {
    return List.generate(2, (index) => ListaddiconItemModel());
  }
}
