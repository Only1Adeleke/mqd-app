// ignore_for_file: must_be_immutable

part of 'dating_matches_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DatingMatchesTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DatingMatchesTabContainerEvent extends Equatable {}

/// Event that is dispatched when the DatingMatchesTabContainer widget is first created.
class DatingMatchesTabContainerInitialEvent
    extends DatingMatchesTabContainerEvent {
  @override
  List<Object?> get props => [];
}
