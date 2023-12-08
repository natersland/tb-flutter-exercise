import 'package:flutter/material.dart';

class CommonScaffold extends StatelessWidget {
  final String appBarTitle;
  final bool isShowAppBar;
  final bool isShowBackButton;
  final Widget child;

  const CommonScaffold({
    super.key,
    required this.appBarTitle,
    this.isShowAppBar = true,
    this.isShowBackButton = true,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isShowAppBar
          ? AppBar(
              title: Text(appBarTitle),
              centerTitle: true,
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(4),
                child: Container(
                  color: Colors.grey.shade300,
                  height: 1,
                ),
              ),
        leading: isShowBackButton
                  ? IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.of(context).pop(),
                    )
                  : null,
            )
          : null,
      body: child,
    );
  }
}
