// ignore_for_file: must_be_immutable

part of 'personal_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PersonalDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PersonalDetailsEvent extends Equatable {}

/// Event that is dispatched when the PersonalDetails widget is first created.
class PersonalDetailsInitialEvent extends PersonalDetailsEvent {
  @override
  List<Object?> get props => [];
}
