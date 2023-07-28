// ignore_for_file: must_be_immutable

part of 'home_swipe_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeSwipe widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomeSwipeEvent extends Equatable {}

/// Event that is dispatched when the HomeSwipe widget is first created.
class HomeSwipeInitialEvent extends HomeSwipeEvent {
  @override
  List<Object?> get props => [];
}
