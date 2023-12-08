import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tb_exercise/src/features/commons/utils/routename.dart';
import 'package:tb_exercise/src/features/homepage/homepage.dart';
import 'package:tb_exercise/src/features/list/list_page.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/components/menu_content/menu_content.dart';
import 'package:tb_exercise/src/features/staggered_grid_view/staggered_grid_view_page.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: RouteName.home,
      routes: {
        RouteName.home: (context) => const HomePage(),
        RouteName.staggeredGridView: (context) => const StaggeredGridViewPage(),
        RouteName.menuContent: (context) => const MenuContent(),
        RouteName.list: (context) => const ListPage(),
      },
    );
  }
}
