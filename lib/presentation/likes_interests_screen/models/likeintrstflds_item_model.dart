// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';/// This class is used in the [likeintrstflds_item_widget] screen.
class LikeintrstfldsItemModel extends Equatable {LikeintrstfldsItemModel({this.phtogrphyTxt = "Photography", this.isSelected = false, });

String phtogrphyTxt;

bool isSelected;

LikeintrstfldsItemModel copyWith({String? phtogrphyTxt, bool? isSelected, }) { return LikeintrstfldsItemModel(
phtogrphyTxt : phtogrphyTxt ?? this.phtogrphyTxt,
isSelected : isSelected ?? this.isSelected,
); } 
@override List<Object?> get props => [phtogrphyTxt,isSelected];
 }
