// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'listeventtype_item_model.dart';/// This class defines the variables used in the [nearby_dating_events_page],
/// and is typically used to hold data that is passed between different parts of the application.
class NearbyDatingEventsModel extends Equatable {NearbyDatingEventsModel({this.listeventtypeItemList = const []});

List<ListeventtypeItemModel> listeventtypeItemList;

NearbyDatingEventsModel copyWith({List<ListeventtypeItemModel>? listeventtypeItemList}) { return NearbyDatingEventsModel(
listeventtypeItemList : listeventtypeItemList ?? this.listeventtypeItemList,
); } 
@override List<Object?> get props => [listeventtypeItemList];
 }
