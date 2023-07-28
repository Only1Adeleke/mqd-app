// ignore_for_file: must_be_immutable

part of 'vdeo_call_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VdeoCall widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class VdeoCallEvent extends Equatable {}

/// Event that is dispatched when the VdeoCall widget is first created.
class VdeoCallInitialEvent extends VdeoCallEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends VdeoCallEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
