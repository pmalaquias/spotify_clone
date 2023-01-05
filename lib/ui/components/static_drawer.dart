import 'package:flutter/material.dart';

import 'title_library_custom.dart';
import 'title_menu_custom.dart';

class StaticDrawer extends StatelessWidget {
  const StaticDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      if (constraints.maxWidth >= 250) {
        return Container(
          width: 300,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: ListView(
            children: const <Widget>[
              TileMenuCustom(
                icon: Icons.home,
                title: 'Início',
              ),
              TileMenuCustom(
                icon: Icons.search,
                title: 'Buscar',
              ),
              TileMenuCustom(
                icon: Icons.library_music,
                title: 'Sua Biblioteca',
              ),
              Divider(),
              TileLibraryCustom(
                title: 'Criar playlist',
                icon: Icons.add,
              ),
              TileLibraryCustom(
                title: 'Músicas Curtidas',
                icon: Icons.favorite,
              ),
              TileLibraryCustom(
                title: 'Seus episódios',
                icon: Icons.bookmark,
              ),
            ],
          ),
        );
      } else {
        return Container(
          width: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
          ),
          child: ListView(
            children: const <Widget>[
              TileMenuCustom(
                icon: Icons.home,
                title: 'Início',
              ),
              TileMenuCustom(
                icon: Icons.search,
                title: 'Buscar',
              ),
              TileMenuCustom(
                icon: Icons.library_music,
                title: 'Sua Biblioteca',
              ),
              Divider(),
              TileLibraryCustom(
                title: 'Criar playlist',
                icon: Icons.add,
              ),
              TileLibraryCustom(
                title: 'Músicas Curtidas',
                icon: Icons.favorite,
              ),
              TileLibraryCustom(
                title: 'Seus episódios',
                icon: Icons.bookmark,
              ),
            ],
          ),
        );
      }
    });
  }
}
