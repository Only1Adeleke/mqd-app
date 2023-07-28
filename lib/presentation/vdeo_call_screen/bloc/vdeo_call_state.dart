// ignore_for_file: must_be_immutable

part of 'vdeo_call_bloc.dart';

/// Represents the state of VdeoCall in the application.
class VdeoCallState extends Equatable {
  VdeoCallState({
    this.radioGroup = "",
    this.vdeoCallModelObj,
  });

  VdeoCallModel? vdeoCallModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        vdeoCallModelObj,
      ];
  VdeoCallState copyWith({
    String? radioGroup,
    VdeoCallModel? vdeoCallModelObj,
  }) {
    return VdeoCallState(
      radioGroup: radioGroup ?? this.radioGroup,
      vdeoCallModelObj: vdeoCallModelObj ?? this.vdeoCallModelObj,
    );
  }
}
