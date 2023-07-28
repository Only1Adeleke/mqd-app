// ignore_for_file: must_be_immutable

part of 'dating_matches_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DatingMatches widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DatingMatchesEvent extends Equatable {}

/// Event that is dispatched when the DatingMatches widget is first created.
class DatingMatchesInitialEvent extends DatingMatchesEvent {
  @override
  List<Object?> get props => [];
}
