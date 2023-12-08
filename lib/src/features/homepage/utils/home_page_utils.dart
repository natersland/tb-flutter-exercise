import 'package:tb_exercise/src/features/commons/utils/routename.dart';

class HomePageButtonData {
  final String title;
  final String routeName;

  HomePageButtonData({
    required this.title,
    required this.routeName,
  });
}

List<HomePageButtonData> homePageButtonDataList = [
  // HomePageButtonData(
  //   title: 'Total Sum',
  //   routeName: RouteName.staggeredGridView,
  // ),
  // HomePageButtonData(
  //   title: 'Fibonacci',
  //   routeName: RouteName.staggeredGridView,
  // ),
  //
  // HomePageButtonData(
  //   title: 'Count Alphabet',
  //   routeName: RouteName.staggeredGridView,
  // ),
  // HomePageButtonData(
  //   title: 'Delay',
  //   routeName: RouteName.staggeredGridView,
  // ),
  HomePageButtonData(
    title: 'Staggered Grid View & Responsive',
    routeName: RouteName.staggeredGridView,
  ),
  HomePageButtonData(
    title: 'List',
    routeName: RouteName.list,
  ),
];
