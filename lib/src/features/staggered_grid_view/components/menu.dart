import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tb_exercise/src/features/commons/theme/responsive.dart';
import 'package:tb_exercise/src/features/commons/utils/routename.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/store/staggered_store.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/utils/menu_utils.dart';

class Menu extends ConsumerWidget {
  final MenuItemData menuItemData;

  const Menu({
    super.key,
    required this.menuItemData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staggeredController = ref.read(staggeredProvider.notifier);
    return StaggeredGridTile.count(
      crossAxisCellCount: menuItemData.crossAxisCellCount,
      mainAxisCellCount: menuItemData.mainAxisCellCount,
      child: InkWell(
        onTap: () {
          staggeredController.setContent(menuItemData: menuItemData);
          {
            AppResponsive.isTablet(context) ||
                    AppResponsive.isLandscape(context)
                ? null
                : Navigator.pushNamed(context, RouteName.menuContent);
          }
        },
        // onTap: AppResponsive.isTablet(context) ||
        //         AppResponsive.isLandscape(context)
        //     ? null
        //     : () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => MenuContent(
        //               menuItemData: menuItemData,
        //             ),
        //           ),
        //         );
        //       },
        child: Container(
          decoration: BoxDecoration(color: menuItemData.color),
          height: 100,
          width: double.infinity,
          child: Center(
              child: Text(
            menuItemData.title,
            style: const TextStyle(fontSize: 24),
          )),
        ),
      ),
    );
  }
}
