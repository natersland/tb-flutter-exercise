import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tb_exercise/src/features/commons/theme/responsive.dart';
import 'package:tb_exercise/src/features/commons/widgets/scaffold.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/components/app_logo.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/components/menu_content/menu_content.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/utils/menu_utils.dart';
import 'components/menu.dart';

class StaggeredGridViewPage extends ConsumerWidget {
  const StaggeredGridViewPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CommonScaffold(
      appBarTitle: "Staggered Grid View",
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: AppResponsive.isTablet(context) ||
                  AppResponsive.isLandscape(context)
              ? _buildTablet(context)
              : _buildMobile(context)),
    );
  }
}

Widget _buildMobile(BuildContext context) {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        const AppLogo(),
        const SizedBox(
          height: 50,
        ),
        StaggeredGrid.count(
            crossAxisCount: 4,
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            children: menuItemDataList.map((menuItemData) {
              return Menu(
                menuItemData: menuItemData,
              );
            }).toList()),
      ],
    ),
  );
}

Widget _buildTablet(BuildContext context) {
  return Row(
    children: [
      Expanded(
        flex: 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const AppLogo(),
              const SizedBox(
                height: 50,
              ),
              StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: menuItemDataList.map((menuItemData) {
                    return Menu(
                      menuItemData: menuItemData,
                    );
                  }).toList()),
            ],
          ),
        ),
      ),
      const Expanded(flex: 4, child: MenuContent()),
    ],
  );
}
