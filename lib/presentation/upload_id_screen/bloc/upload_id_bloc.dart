import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/upload_id_screen/models/upload_id_model.dart';part 'upload_id_event.dart';part 'upload_id_state.dart';/// A bloc that manages the state of a UploadId according to the event that is dispatched to it.
class UploadIdBloc extends Bloc<UploadIdEvent, UploadIdState> {UploadIdBloc(UploadIdState initialState) : super(initialState) { on<UploadIdInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); }

_onInitialize(UploadIdInitialEvent event, Emitter<UploadIdState> emit, ) async  { emit(state.copyWith(uploadIdModelObj: state.uploadIdModelObj?.copyWith(dropdownItemList: fillDropdownItemList()))); } 
_changeDropDown(ChangeDropDownEvent event, Emitter<UploadIdState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
 }
