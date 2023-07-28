import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import '../models/profile_one_item_model.dart';import '../models/profile_one1_item_model.dart';import 'package:mqd_v1/presentation/profile_one_screen/models/profile_one_model.dart';part 'profile_one_event.dart';part 'profile_one_state.dart';/// A bloc that manages the state of a ProfileOne according to the event that is dispatched to it.
class ProfileOneBloc extends Bloc<ProfileOneEvent, ProfileOneState> {ProfileOneBloc(ProfileOneState initialState) : super(initialState) { on<ProfileOneInitialEvent>(_onInitialize); }

_onInitialize(ProfileOneInitialEvent event, Emitter<ProfileOneState> emit, ) async  { emit(state.copyWith(profileOneModelObj: state.profileOneModelObj?.copyWith(profileOneItemList: fillProfileOneItemList(), profileOne1ItemList: fillProfileOne1ItemList()))); } 
List<ProfileOneItemModel> fillProfileOneItemList() { return List.generate(4, (index) => ProfileOneItemModel()); } 
List<ProfileOne1ItemModel> fillProfileOne1ItemList() { return List.generate(5, (index) => ProfileOne1ItemModel()); } 
 }
