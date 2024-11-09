import 'package:flutter/material.dart';

class MyAnimatedList extends StatefulWidget {
  const MyAnimatedList({super.key});

  @override
  State<MyAnimatedList> createState() => _MyAnimatedListState();
}

class _MyAnimatedListState extends State<MyAnimatedList> {
  // key to manage the state of the animatedlist

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  // list to hold items displayed in the animatedlist
  final List<String> _items = [
    'Item 1',
    'Item 2',
    'Item 3',
  ];

  // method to add a new item to the list

  void _addItem() {
    final newIndex = _items.length; // determine the index for the new item
    _items.add('Item ${newIndex + 1}'); // add new item to the list
    _listKey.currentState
        ?.insertItem(newIndex); // animated the insertion of the new item
  }

  // method to remove an item from the list at a given index

  void _removeItem(int index) {
    // check if the index is valid before procedding
    if (index < 0 || index >= _items.length) return;
    final removedItem =
        _items[index]; // store the item to be removed for animation

    setState(() {
      _items.removeAt(index); // update the list by removing the item
    });

    // animate removal of the item from the list

    _listKey.currentState?.removeItem(
      index,
      (context, animation) => _buildItem(removedItem, animation),
    );
  }

  // method to build each item in the list with an animation effect
  Widget _buildItem(String item, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation, // animate size change during insertion/removal
      child: Card(
        color: Colors.blue[200],
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: ListTile(
          title: Text(
            item,
            style: const TextStyle(fontSize: 18),
          ),
          trailing: IconButton(
            onPressed: () {
              int index =
                  _items.indexOf(item); // find index of the item to remove
              if (index != -1) {
                // ensure index is valid before removing
                _removeItem(index); // call method ot remove item safely
              }
            },
            icon: const Icon(Icons.remove_circle),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Animated List',
          style: TextStyle(fontSize: 26),
        ),
      ),
      body: AnimatedList(
        key: _listKey, // key for managing state of animatedlist
        initialItemCount: _items.length, // initial number of item in the list
        itemBuilder: (context, index, animation) => _buildItem(
            _items[index], animation), // build item with animation effect
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem, // add new item when button is pressed
        child: const Icon(Icons.add),
      ),
    );
  }
}
