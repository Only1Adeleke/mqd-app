// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'dating_matches_item_model.dart';/// This class defines the variables used in the [dating_matches_page],
/// and is typically used to hold data that is passed between different parts of the application.
class DatingMatchesModel extends Equatable {DatingMatchesModel({this.datingMatchesItemList = const []});

List<DatingMatchesItemModel> datingMatchesItemList;

DatingMatchesModel copyWith({List<DatingMatchesItemModel>? datingMatchesItemList}) { return DatingMatchesModel(
datingMatchesItemList : datingMatchesItemList ?? this.datingMatchesItemList,
); } 
@override List<Object?> get props => [datingMatchesItemList];
 }
