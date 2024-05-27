import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:priority_soft_task/core/locator/locator.dart';
import 'package:priority_soft_task/core/modes/shoes_model.dart';
import 'package:priority_soft_task/core/services/firebase_service.dart';
import 'package:priority_soft_task/core/utils/common_utils.dart';

part 'home_cubit.freezed.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());
  final firebaseService = locator<FirebaseService>();

  Future<void> onTabSelected({
    required int index,
    required String selectedBrand,
  }) async {
    emit(
      state.copyWith(
        selectedIndex: index,
      ),
    );
    final filterBy = selectedBrand.capitalize();
    dPrint('filterByValue:$filterBy');
    if (filterBy == 'All') {
      await getShoesData();
    } else {
      await getShoesDataWithFilter(filterBy: 'brand', filterText: filterBy);
    }
  }

  Future<void> getShoesDataWithFilter({
    required String filterBy,
    required String filterText,
  }) async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    try {
      final data = await firebaseService.fetchShoesByFilter(
        filterText: filterText,
        filterBy: filterBy,
      );
      emit(
        state.copyWith(
          shoesList: data,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          shoesList: [],
          isLoading: false,
        ),
      );
    }
  }

  Future<void> getShoesData() async {
    emit(
      state.copyWith(
        isLoading: true,
      ),
    );
    try {
      final data = await firebaseService.fetchShoesFromFirestore(itemCount: 10);
      emit(
        state.copyWith(
          shoesList: data,
          isLoading: false,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          shoesList: [],
          isLoading: false,
        ),
      );
    }
  }
}
