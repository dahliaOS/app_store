import 'package:flutter/material.dart';

class AppCategoryItem extends StatelessWidget {
  final String name;
  final String tooltip;
  final IconData icon;

  const AppCategoryItem({
    required this.name,
    required this.tooltip,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      preferBelow: false,
      verticalOffset: 35,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 60,
            width: 60,
            child: Card(
              child: Icon(icon),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
