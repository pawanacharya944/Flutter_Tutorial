import 'package:flutter/material.dart';

class ReOrder_ListView extends StatefulWidget {
  const ReOrder_ListView({super.key});

  @override
  State<ReOrder_ListView> createState() => _ReOrder_ListViewState();
}

class _ReOrder_ListViewState extends State<ReOrder_ListView> {
  //list of tiles

  final List myTiles = ['John', 'Chris', 'Messi', 'Ronaldo', 'Neymar'];

  //reorder method

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      // this helps to move down the list
      if (oldIndex < newIndex) {
        newIndex -= 1;
      }

      // get the tile we are moving

      final String tile = myTiles.removeAt(oldIndex);

      // place the tile in new position

      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Re-Orderable ListView"),
        backgroundColor: Colors.teal[200],
      ),
      body: ReorderableListView(
          padding: const EdgeInsets.all(10),
          children: [
            for (final tile in myTiles)
              Padding(
                key: ValueKey(tile),
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.teal[100],
                  child: ListTile(
                    title: Text(
                      tile.toString(),
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
          ],
          onReorder: (oldIndex, newIndex) {
            updateMyTiles(oldIndex, newIndex);
          }),
    );
  }
}
