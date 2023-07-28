// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'matchesthumbs_item_model.dart';import 'listbg_item_model.dart';/// This class defines the variables used in the [messages_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MessagesModel extends Equatable {MessagesModel({this.matchesthumbsItemList = const [], this.listbgItemList = const [], });

List<MatchesthumbsItemModel> matchesthumbsItemList;

List<ListbgItemModel> listbgItemList;

MessagesModel copyWith({List<MatchesthumbsItemModel>? matchesthumbsItemList, List<ListbgItemModel>? listbgItemList, }) { return MessagesModel(
matchesthumbsItemList : matchesthumbsItemList ?? this.matchesthumbsItemList,
listbgItemList : listbgItemList ?? this.listbgItemList,
); } 
@override List<Object?> get props => [matchesthumbsItemList,listbgItemList];
 }
