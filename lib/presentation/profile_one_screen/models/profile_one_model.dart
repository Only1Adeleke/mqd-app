// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'profile_one_item_model.dart';import 'profile_one1_item_model.dart';/// This class defines the variables used in the [profile_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProfileOneModel extends Equatable {ProfileOneModel({this.profileOneItemList = const [], this.profileOne1ItemList = const [], });

List<ProfileOneItemModel> profileOneItemList;

List<ProfileOne1ItemModel> profileOne1ItemList;

ProfileOneModel copyWith({List<ProfileOneItemModel>? profileOneItemList, List<ProfileOne1ItemModel>? profileOne1ItemList, }) { return ProfileOneModel(
profileOneItemList : profileOneItemList ?? this.profileOneItemList,
profileOne1ItemList : profileOne1ItemList ?? this.profileOne1ItemList,
); } 
@override List<Object?> get props => [profileOneItemList,profileOne1ItemList];
 }
