import 'package:flutter/material.dart';

class CustomTopAppBar extends StatelessWidget {
  const CustomTopAppBar({super.key, this.actions, this.title});

  final String? title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title != null
          ? Text(
              title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            )
          : null,
      actions: actions,
    );
  }
}
