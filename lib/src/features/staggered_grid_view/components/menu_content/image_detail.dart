import 'package:flutter/cupertino.dart';
import 'package:tb_exercise/src/features/commons/theme/responsive.dart';

class ImageDetail extends StatelessWidget {
  final String imageDetail;

  const ImageDetail({
    super.key,
    required this.imageDetail,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      imageDetail,
      style: TextStyle(fontSize: AppResponsive.isLandscape(context) || AppResponsive.isTablet(
          context) ? 25 : 18),
    );
  }
}
