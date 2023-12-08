import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_store.freezed.dart';


@freezed
class ListState with _$ListState {
  const factory ListState({
    @Default(0) int number,
  }) = _ListState;
}

class ListController extends StateNotifier<ListState> {
  ListController() : super(const ListState()) {
    init();
  }

  void init() {
    resetNumbers();
  }

  void setNumbers({required int number}) {
    state = state.copyWith(number: number);
  }

  void resetNumbers() {
    state = state.copyWith(number: 0);
  }
}

final listProvider =
    StateNotifierProvider<ListController, ListState>((ref) => ListController());