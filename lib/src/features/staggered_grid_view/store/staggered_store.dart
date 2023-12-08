import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/utils/menu_utils.dart';

part 'staggered_store.freezed.dart';

@freezed
class StaggeredState with _$StaggeredState {
  const factory StaggeredState({
    @Default(false) bool isLoading,
    @Default("") String title,
    @Default("") String image,
    @Default("") String imageTitle,
    @Default("") String imageDetail,
  }) = _StaggeredState;
}

class StaggeredController extends StateNotifier<StaggeredState> {
  StaggeredController() : super(const StaggeredState()) {
    init();
  }

  void init() {
    clearContent();
  }

  void setContent({required MenuItemData menuItemData}) {
    state = state.copyWith(
      isLoading: true,
      title: menuItemData.title,
      image: menuItemData.image,
      imageTitle: menuItemData.imageTitle,
      imageDetail: menuItemData.imageDetail,
    );
    state = state.copyWith(isLoading: false);
  }

  void clearContent() {
    state = state.copyWith(
      title: "",
      image: "",
      imageTitle: "",
      imageDetail: "",
    );
  }
}

final staggeredProvider =
    StateNotifierProvider<StaggeredController, StaggeredState>(
  (ref) => StaggeredController(),
);
