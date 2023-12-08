import 'package:flutter/cupertino.dart';
import 'package:tb_exercise/src/features/commons/theme/responsive.dart';

class ImageTitle extends StatelessWidget {
  final String title;

  const ImageTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: AppResponsive.isLandscape(context) || AppResponsive.isTablet(
            context)? 30 : 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
