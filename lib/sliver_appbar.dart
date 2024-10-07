import 'package:flutter/material.dart';

class My_SliverAppBar extends StatelessWidget {
  const My_SliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: const Text(
              "Sliver App Bar",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.teal[100],
            expandedHeight:
                200.0, // expanded height of the app bar when fully expanded

            pinned: true, // whether the app bar should remain pinned at the top

            floating:
                true, // whether the app bar should float back into view when scrolling up

            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              background: Image.network(
                'https://images.pexels.com/photos/906150/pexels-photo-906150.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', // background image for the flexible space
                fit: BoxFit.cover,
              ),
            ),

            actions: [
              IconButton(
                onPressed: () {
                  print('Search Button Pressed');
                },
                icon: const Icon(Icons.search),
              ),
              IconButton(
                onPressed: () {
                  print('More Options Pressed');
                },
                icon: const Icon(Icons.more_vert),
              ),
            ],
          ),
          // silverlist to display a list of items below the app bar

          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const ListTile(
                  title: Text("Code Flicks"),
                  subtitle: Text("Eat Sleep CoDe Repeat"),
                );
              },
              childCount: 50, // number of items in the list
            ),
          ),
        ],
      ),
    );
  }
}
