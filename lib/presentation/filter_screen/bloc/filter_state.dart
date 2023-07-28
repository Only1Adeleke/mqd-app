// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Represents the state of Filter in the application.
class FilterState extends Equatable {
  FilterState({
    this.groupthirteenController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.selectedDropDownValue3,
    this.filterModelObj,
  });

  TextEditingController? groupthirteenController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        groupthirteenController,
        selectedDropDownValue,
        selectedDropDownValue1,
        selectedDropDownValue2,
        selectedDropDownValue3,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? groupthirteenController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      groupthirteenController:
          groupthirteenController ?? this.groupthirteenController,
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
          selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
          selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
          selectedDropDownValue3 ?? this.selectedDropDownValue3,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
