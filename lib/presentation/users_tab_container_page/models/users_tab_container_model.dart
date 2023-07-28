// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listaddicon_item_model.dart';/// This class defines the variables used in the [users_tab_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class UsersTabContainerModel extends Equatable {UsersTabContainerModel({this.listaddiconItemList = const []});

List<ListaddiconItemModel> listaddiconItemList;

UsersTabContainerModel copyWith({List<ListaddiconItemModel>? listaddiconItemList}) { return UsersTabContainerModel(
listaddiconItemList : listaddiconItemList ?? this.listaddiconItemList,
); } 
@override List<Object?> get props => [listaddiconItemList];
 }
