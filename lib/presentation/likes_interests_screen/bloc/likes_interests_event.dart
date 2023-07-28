// ignore_for_file: must_be_immutable

part of 'likes_interests_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LikesInterests widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LikesInterestsEvent extends Equatable {}

/// Event that is dispatched when the LikesInterests widget is first created.
class LikesInterestsInitialEvent extends LikesInterestsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends LikesInterestsEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
