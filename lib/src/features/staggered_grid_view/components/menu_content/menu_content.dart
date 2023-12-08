import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tb_exercise/src/features/commons/theme/responsive.dart';
import 'package:tb_exercise/src/features/commons/widgets/loading.dart';
import 'package:tb_exercise/src/features/commons/widgets/scaffold.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/components/menu_content/image_card.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/components/menu_content/image_detail.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/components/menu_content/image_title.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/store/staggered_store.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuContent extends HookConsumerWidget {
  const MenuContent({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ScrollController _scrollController = useScrollController();
    final title = ref.watch(staggeredProvider).title;
    final image = ref.watch(staggeredProvider).image;
    final imageTitle = ref.watch(staggeredProvider).imageTitle;
    final imageDetail = ref.watch(staggeredProvider).imageDetail;
    final isLoading = ref.watch(staggeredProvider).isLoading;

    void _scrollToTop() {
      _scrollController.jumpTo(0.0);
    }

    useEffect(() => _scrollToTop, [image]);

    return CommonScaffold(
        isShowAppBar: AppResponsive.isTablet(context) ||
                AppResponsive.isLandscape(context)
            ? false
            : true,
        appBarTitle: title,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: isLoading
              ? const Loading()
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: image != ""
                      ? _buildContent(
                          image: image,
                          imageTitle: imageTitle,
                          imageDetail: imageDetail,
                        )
                      : _buildNoContent(context: context),
                ),
        ));
  }
}

Widget _buildNoContent({required BuildContext context}) {
  return const SizedBox.shrink();
}

Widget _buildContent({
  required String image,
  required String imageTitle,
  required String imageDetail,
}) {
  return Column(
    children: [
      const SizedBox(
        height: 40,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageCard(
            image: image,
          ),
          const SizedBox(
            width: 18,
          ),
          Expanded(child: ImageTitle(title: imageTitle)),
        ],
      ),
      const SizedBox(
        height: 32,
      ),
      ImageDetail(imageDetail: imageDetail),
      const SizedBox(
        height: 80,
      ),
    ],
  );
}
