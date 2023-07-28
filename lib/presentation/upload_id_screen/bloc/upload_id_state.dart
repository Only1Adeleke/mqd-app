// ignore_for_file: must_be_immutable

part of 'upload_id_bloc.dart';

/// Represents the state of UploadId in the application.
class UploadIdState extends Equatable {
  UploadIdState({
    this.selectedDropDownValue,
    this.uploadIdModelObj,
  });

  SelectionPopupModel? selectedDropDownValue;

  UploadIdModel? uploadIdModelObj;

  @override
  List<Object?> get props => [
        selectedDropDownValue,
        uploadIdModelObj,
      ];
  UploadIdState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    UploadIdModel? uploadIdModelObj,
  }) {
    return UploadIdState(
      selectedDropDownValue:
          selectedDropDownValue ?? this.selectedDropDownValue,
      uploadIdModelObj: uploadIdModelObj ?? this.uploadIdModelObj,
    );
  }
}
