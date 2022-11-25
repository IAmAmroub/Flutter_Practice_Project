import 'package:flutter/material.dart';

class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({super.key});

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: false,
            floating: true,
            stretch: true,
            centerTitle: false,
            expandedHeight: 250,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                "Sliver AppBar Page",
                style: TextStyle(
                  color: Colors.lightBlue,
                ),
                textScaleFactor: 1,
              ),
              background: Image.network(
                "https://ep01.epimg.net/elpais/imagenes/2022/04/11/album/1649681827_230416_1649683558_noticia_normal.jpg",
                fit: BoxFit.fill,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 20,
              (_, int index) {
                if (index.isOdd) {
                  return const Divider();
                } else {
                  return ListTile(
                    onTap: () {},
                    leading: const Icon(Icons.lens_blur_sharp),
                    title: Text('list item ${index + 1}'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
