import 'package:flutter/material.dart';

class TileMenuCustom extends StatefulWidget {
  const TileMenuCustom({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final IconData icon;
  final String title;

  @override
  State<TileMenuCustom> createState() => _TileMenuCustomState();
}

class _TileMenuCustomState extends State<TileMenuCustom> {
  double iconSize = 24;
  double fontSize = 16;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((_, constraints) {
        if (constraints.maxWidth >= 250) {
          return ListTile(
            title: TextButton(
              onPressed: () {},
              onHover: (isHover) {
                if (isHover) {
                  setState(() {
                    iconSize = 32;
                    fontSize = 18;
                  });
                } else {
                  setState(() {
                    iconSize = 24;
                    fontSize = 16;
                  });
                }
              },
              child: Row(
                children: [
                  Icon(
                    widget.icon,
                    size: iconSize,
                  ),
                  const VerticalDivider(),
                  Text(
                    widget.title,
                    style: TextStyle(fontSize: fontSize),
                  ),
                ],
              ),
            ),
          );
        } else {
          return ListTile(
            title: TextButton(
              onPressed: () {},
              onHover: (isHover) {
                if (isHover) {
                  setState(() {
                    iconSize = 32;
                  });
                } else {
                  setState(() {
                    iconSize = 24;
                  });
                }
              },
              child: Icon(
                widget.icon,
                size: iconSize,
              ),
            ),
          );
        }
      }),
    );
  }
}
