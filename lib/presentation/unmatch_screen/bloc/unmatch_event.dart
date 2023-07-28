// ignore_for_file: must_be_immutable

part of 'unmatch_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Unmatch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class UnmatchEvent extends Equatable {}

/// Event that is dispatched when the Unmatch widget is first created.
class UnmatchInitialEvent extends UnmatchEvent {
  @override
  List<Object?> get props => [];
}
