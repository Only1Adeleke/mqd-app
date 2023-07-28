// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'subscription_item_model.dart';/// This class defines the variables used in the [subscription_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SubscriptionModel extends Equatable {SubscriptionModel({this.subscriptionItemList = const []});

List<SubscriptionItemModel> subscriptionItemList;

SubscriptionModel copyWith({List<SubscriptionItemModel>? subscriptionItemList}) { return SubscriptionModel(
subscriptionItemList : subscriptionItemList ?? this.subscriptionItemList,
); } 
@override List<Object?> get props => [subscriptionItemList];
 }
