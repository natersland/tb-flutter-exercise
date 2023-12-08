import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tb_exercise/src/features/commons/widgets/scaffold.dart';
import 'package:tb_exercise/src/features/list/components/input_number/input_number.dart';
import 'package:tb_exercise/src/features/list/components/list/number_list.dart';

class ListPage extends ConsumerWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const CommonScaffold(
        appBarTitle: "List",
        child: SingleChildScrollView(
          child: Column(
            children: [
              InputNumber(),
              NumberList(),
            ],
          ),
        ));
  }
}
