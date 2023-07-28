// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'likeintrstflds_item_model.dart';/// This class defines the variables used in the [likes_interests_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LikesInterestsModel extends Equatable {LikesInterestsModel({this.likeintrstfldsItemList = const []});

List<LikeintrstfldsItemModel> likeintrstfldsItemList;

LikesInterestsModel copyWith({List<LikeintrstfldsItemModel>? likeintrstfldsItemList}) { return LikesInterestsModel(
likeintrstfldsItemList : likeintrstfldsItemList ?? this.likeintrstfldsItemList,
); } 
@override List<Object?> get props => [likeintrstfldsItemList];
 }
