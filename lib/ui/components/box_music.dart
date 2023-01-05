import 'package:flutter/material.dart';

class BoxMusic extends StatefulWidget {
  const BoxMusic({super.key});

  @override
  State<BoxMusic> createState() => _BoxMusicState();
}

class _BoxMusicState extends State<BoxMusic> {
  double imgSize = 120;
  double iconSize = 32;
  bool showIcon = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onHover: (isHover) {
          if (isHover) {
            setState(() {
              imgSize = 140;
              showIcon = true;
            });
          } else {
            setState(() {
              imgSize = 120;
              showIcon = false;
            });
          }
        },
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblHgkAuX6jAqLs0Y8KKTsknkIbEjslwrREY-S&s=0',
                      height: imgSize,
                      width: imgSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 90,
                    //bottom: 10,
                    child: showIcon
                        ? Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              child: Icon(
                                Icons.play_arrow,
                                size: iconSize,
                                color: Theme.of(context).colorScheme.onPrimary,
                              ),
                            ),
                          )
                        : Container(),
                  )
                ],
              ),
              Text(
                'Title',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'SubTitle',
                style: Theme.of(context).textTheme.overline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SimpleTileMusicBox extends StatefulWidget {
  const SimpleTileMusicBox({
    Key? key,
  }) : super(key: key);

  @override
  State<SimpleTileMusicBox> createState() => _SimpleTileMusicBoxState();
}

class _SimpleTileMusicBoxState extends State<SimpleTileMusicBox> {
  double imgSize = 90;
  double iconSize = 32;
  bool showIcon = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onHover: (isHover) {
          if (isHover) {
            setState(() {
              imgSize = 100;
              showIcon = true;
            });
          } else {
            setState(() {
              imgSize = 90;
              showIcon = false;
            });
          }
        },
        onTap: () {},
        child: SizedBox(
          width: 400,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblHgkAuX6jAqLs0Y8KKTsknkIbEjslwrREY-S&s=0',
                      height: imgSize,
                      width: imgSize,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const VerticalDivider(),
                  Text(
                    'Title',
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              showIcon
                  ? Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        child: Icon(
                          Icons.play_arrow,
                          size: iconSize,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
