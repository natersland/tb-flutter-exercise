import 'package:flutter/cupertino.dart';
import 'package:tb_exercise/src/features/commons/theme/responsive.dart';

class ImageCard extends StatelessWidget {
  final String image;

  const ImageCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppResponsive.isPortrait(context)
          ? MediaQuery.of(context).size.height * 0.2
          : MediaQuery.of(context).size.height * 0.4,
      width:
          AppResponsive.isPortrait(context) && !AppResponsive.isTablet(context)
              ? MediaQuery.of(context).size.width * 0.45
              : MediaQuery.of(context).size.width * 0.4,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
