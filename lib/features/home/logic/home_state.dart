part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState({
    @Default(0) int selectedIndex,
    @Default([]) List<ShoesModel> shoesList,
    @Default(false) bool isLoading,
  }) = _HomeState;
}
