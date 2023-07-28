// ignore_for_file: must_be_immutable

part of 'match_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Match widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MatchEvent extends Equatable {}

/// Event that is dispatched when the Match widget is first created.
class MatchInitialEvent extends MatchEvent {
  @override
  List<Object?> get props => [];
}
