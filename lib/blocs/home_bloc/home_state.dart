part of 'home_bloc.dart';

@immutable
abstract class HomeState {
  final bool mePicanLosCocos;
  const HomeState({this.mePicanLosCocos = true});
}

class HomeInitialState extends HomeState {
  const HomeInitialState() : super(mePicanLosCocos: true);
}

class CocosRascadosState extends HomeState {
  final bool seRascoLosCocos;
  const CocosRascadosState(this.seRascoLosCocos)
      : super(mePicanLosCocos: seRascoLosCocos);
}
