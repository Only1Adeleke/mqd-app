// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';import 'package:mqd_v1/data/models/selectionPopupModel/selection_popup_model.dart';/// This class defines the variables used in the [upload_id_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UploadIdModel extends Equatable {UploadIdModel({this.dropdownItemList = const []});

List<SelectionPopupModel> dropdownItemList;

UploadIdModel copyWith({List<SelectionPopupModel>? dropdownItemList}) { return UploadIdModel(
dropdownItemList : dropdownItemList ?? this.dropdownItemList,
); } 
@override List<Object?> get props => [dropdownItemList];
 }
