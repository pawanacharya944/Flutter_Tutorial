import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySearchBar extends StatefulWidget {
  const MySearchBar({super.key});

  @override
  State<MySearchBar> createState() => _MySearchBarState();
}

class _MySearchBarState extends State<MySearchBar> {
  // sample data for demonstration

  final List<String> items = [
    'Coding',
    'Flutter',
    'Programming',
    'Code Flicks',
    'Android',
    'Ios',
    'Java',
    'HTML',
    'JavaScript',
    'Css',
    'Developer',
    'Movie',
    'NetFlix',
    'Book',
    'Photography',
  ];

  // this will hold the filtered results based on user input

  List<String> filteredItems = [];

  // function to filter items based on the search query

  void _filterItems(String query) {
    if (query.isEmpty) {
      setState(() {
        filteredItems = [];
      });
      return;
    }
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('S E A R C H B A R'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              onChanged: _filterItems, // call the filter function on text chang
              style: GoogleFonts.poppins(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: const Color.fromARGB(255, 240, 228, 228),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search here...',
                hintStyle: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredItems[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
