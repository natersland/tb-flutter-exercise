import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tb_exercise/src/features/list/store/list_store.dart';

class InputNumber extends HookConsumerWidget {
  const InputNumber({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = useTextEditingController();

    final listController = ref.read(listProvider.notifier);
    return Container(
        height: MediaQuery.of(context).size.height * 0.2,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: textController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter a number',
                  ),
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  final inputNumber = int.tryParse(textController.text) ?? 0;
                  listController.setNumbers(number: inputNumber);
                  textController.clear();
                },
                child: const Text('List'),
              ),
            ],
          ),
        ));
  }
}
