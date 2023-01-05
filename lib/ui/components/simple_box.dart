import 'package:flutter/material.dart';

class SimpleBox extends StatefulWidget {
  const SimpleBox({
    Key? key,
  }) : super(key: key);

  @override
  State<SimpleBox> createState() => _SimpleBoxState();
}

class _SimpleBoxState extends State<SimpleBox> {
  double imgSize = 120;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onHover: (isHover) {
          if (isHover) {
            setState(() {
              imgSize = 140;
            });
          } else {
            setState(() {
              imgSize = 120;
            });
          }
        },
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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

class SimpleTileBox extends StatefulWidget {
  const SimpleTileBox({
    Key? key,
  }) : super(key: key);

  @override
  State<SimpleTileBox> createState() => _SimpleTileBoxState();
}

class _SimpleTileBoxState extends State<SimpleTileBox> {
  double imgSize = 90;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onHover: (isHover) {
          if (isHover) {
            setState(() {
              imgSize = 100;
            });
          } else {
            setState(() {
              imgSize = 90;
            });
          }
        },
        onTap: () {},
        child: SizedBox(
          width: 400,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
      ),
    );
  }
}
