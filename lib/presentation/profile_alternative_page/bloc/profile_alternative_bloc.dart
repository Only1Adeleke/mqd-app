import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mqd_v1/presentation/profile_alternative_page/models/profile_alternative_model.dart';
part 'profile_alternative_event.dart';
part 'profile_alternative_state.dart';

/// A bloc that manages the state of a ProfileAlternative according to the event that is dispatched to it.
class ProfileAlternativeBloc
    extends Bloc<ProfileAlternativeEvent, ProfileAlternativeState> {
  ProfileAlternativeBloc(ProfileAlternativeState initialState)
      : super(initialState) {
    on<ProfileAlternativeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProfileAlternativeInitialEvent event,
    Emitter<ProfileAlternativeState> emit,
  ) async {}
}
