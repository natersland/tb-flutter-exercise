import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tb_exercise/src/features/list/store/list_store.dart';

class NumberList extends ConsumerWidget {
  const NumberList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(listProvider).number;
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: number,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Center(child: Text('${index + 1}')),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
          return const Divider();
      },
    );
  }
}
