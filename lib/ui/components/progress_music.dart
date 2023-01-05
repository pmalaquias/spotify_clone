import 'dart:async';

import 'package:flutter/material.dart';

class ProgressMusic extends StatefulWidget {
  const ProgressMusic({Key? key}) : super(key: key);

  @override
  State<ProgressMusic> createState() => _ProgressMusicState();
}

class _ProgressMusicState extends State<ProgressMusic> {
  double _progressValue = 0;
  bool _loading = true;
  double barHeight = 5;

  void _updateProgress() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0;
          return;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: Theme.of(context).colorScheme.onTertiary,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRblHgkAuX6jAqLs0Y8KKTsknkIbEjslwrREY-S&s=0',
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Title'),
                      Text('SubTitle'),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shuffle),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.skip_previous),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            _loading = !_loading;
                            _updateProgress();
                          });
                        },
                        icon: const Icon(Icons.play_circle),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.skip_next),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.repeat),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  InkWell(
                    onTap: (() {}),
                    onHover: (isHover) {
                      if (isHover) {
                        setState(() {
                          barHeight = 8;
                        });
                      } else {
                        setState(() {
                          barHeight = 5;
                        });
                      }
                    },
                    child: _loading || (_progressValue != 0.0 && _progressValue <= 1.0)
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('${(_progressValue * 100).round()}%'),
                              const SizedBox(width: 8),
                              SizedBox(
                                width: 630,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: LinearProgressIndicator(
                                    minHeight: barHeight,
                                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                                    value: _progressValue,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 8),
                              const Text('100%'),
                            ],
                          )
                        : SizedBox(
                            width: 630,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: LinearProgressIndicator(
                                minHeight: barHeight,
                                backgroundColor: Theme.of(context).colorScheme.tertiary,
                                value: _progressValue,
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.mic),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.queue_music),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.cast),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.volume_up),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.open_in_full),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
