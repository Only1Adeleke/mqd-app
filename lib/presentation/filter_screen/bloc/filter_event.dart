// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Filter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterEvent extends Equatable {}

/// Event that is dispatched when the Filter widget is first created.
class FilterInitialEvent extends FilterEvent {
  @override
  List<Object?> get props => [];
}

///event for dropdown selection
class ChangeDropDownEvent extends FilterEvent {
  ChangeDropDownEvent({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown1Event extends FilterEvent {
  ChangeDropDown1Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown2Event extends FilterEvent {
  ChangeDropDown2Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///event for dropdown selection
class ChangeDropDown3Event extends FilterEvent {
  ChangeDropDown3Event({required this.value});

  SelectionPopupModel value;

  @override
  List<Object?> get props => [
        value,
      ];
}
