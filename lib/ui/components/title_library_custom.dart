import 'package:flutter/material.dart';

class TileLibraryCustom extends StatefulWidget {
  const TileLibraryCustom({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);
  final String title;
  final IconData icon;

  @override
  State<TileLibraryCustom> createState() => _TileLibraryCustomState();
}

class _TileLibraryCustomState extends State<TileLibraryCustom> {
  double iconSize = 16;
  double fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= 250) {
        return ListTile(
          title: TextButton(
            onHover: (isHover) {
              if (isHover) {
                setState(() {
                  iconSize = 24;
                  fontSize = 20;
                });
              } else {
                setState(() {
                  iconSize = 16;
                  fontSize = 16;
                });
              }
            },
            onPressed: () {},
            child: Row(
              children: [
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Icon(
                    widget.icon,
                    size: iconSize,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                const VerticalDivider(),
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: fontSize,
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return ListTile(
          title: TextButton(
            onHover: (isHover) {
              if (isHover) {
                setState(() {
                  iconSize = 24;
                });
              } else {
                setState(() {
                  iconSize = 16;
                });
              }
            },
            onPressed: () {},
            child: Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Icon(
                widget.icon,
                size: iconSize,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ),
        );
      }
    });
  }
}
