import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../gen/assets.gen.dart';

class AppLogo extends ConsumerWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Assets.images_ic_weary_cat_face.svg(
          height: MediaQuery.of(context).size.height * 0.3,
          fit: BoxFit.fitWidth,
        ),
        const Text(
          "Cat Fantasy",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
