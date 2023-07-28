import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:mqd_v1/presentation/filter_screen/models/filter_model.dart';part 'filter_event.dart';part 'filter_state.dart';/// A bloc that manages the state of a Filter according to the event that is dispatched to it.
class FilterBloc extends Bloc<FilterEvent, FilterState> {FilterBloc(FilterState initialState) : super(initialState) { on<FilterInitialEvent>(_onInitialize); on<ChangeDropDownEvent>(_changeDropDown); on<ChangeDropDown1Event>(_changeDropDown1); on<ChangeDropDown2Event>(_changeDropDown2); on<ChangeDropDown3Event>(_changeDropDown3); }

_changeDropDown(ChangeDropDownEvent event, Emitter<FilterState> emit, ) { emit(state.copyWith(selectedDropDownValue: event.value)); } 
_changeDropDown1(ChangeDropDown1Event event, Emitter<FilterState> emit, ) { emit(state.copyWith(selectedDropDownValue1: event.value)); } 
_changeDropDown2(ChangeDropDown2Event event, Emitter<FilterState> emit, ) { emit(state.copyWith(selectedDropDownValue2: event.value)); } 
_changeDropDown3(ChangeDropDown3Event event, Emitter<FilterState> emit, ) { emit(state.copyWith(selectedDropDownValue3: event.value)); } 
List<SelectionPopupModel> fillDropdownItemList() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList1() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList2() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
List<SelectionPopupModel> fillDropdownItemList3() { return [SelectionPopupModel(id: 1, title: "Item One", isSelected: true), SelectionPopupModel(id: 2, title: "Item Two"), SelectionPopupModel(id: 3, title: "Item Three")]; } 
_onInitialize(FilterInitialEvent event, Emitter<FilterState> emit, ) async  { emit(state.copyWith(groupthirteenController: TextEditingController())); emit(state.copyWith(filterModelObj: state.filterModelObj?.copyWith(dropdownItemList: fillDropdownItemList(), dropdownItemList1: fillDropdownItemList1(), dropdownItemList2: fillDropdownItemList2(), dropdownItemList3: fillDropdownItemList3()))); } 
 }
