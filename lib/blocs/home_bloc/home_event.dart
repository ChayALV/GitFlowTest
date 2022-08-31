part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class RascarCocosEvent extends HomeEvent {
  final bool meRascoLosCocos;
  RascarCocosEvent(this.meRascoLosCocos);
}
