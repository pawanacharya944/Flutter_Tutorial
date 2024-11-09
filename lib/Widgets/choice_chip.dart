import 'package:flutter/material.dart';

class MyChoiceChipApp extends StatefulWidget {
  const MyChoiceChipApp({super.key});

  @override
  State<MyChoiceChipApp> createState() => _MyChoiceChipAppState();
}

class _MyChoiceChipAppState extends State<MyChoiceChipApp> {
  // Variable to keep track of the selected chip index
  int? _selectedIndex;

  // List of options for the choice chips

  final List<String> _options = [
    'Sports',
    'Music',
    'Technology',
    'Food',
    'Movies',
    'Photography',
    'Coding',
    'Gaming',
    'Cooking',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ChoiceChip",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green[300],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // padding around the entire body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Your Intrests:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20, // space between tutle and chips
            ),
            Wrap(
                spacing: 10.0, // space between chips horizontally
                runSpacing: 10.0, // space between chips vertically

                children: List<Widget>.generate(_options.length, (int index) {
                  return ChoiceChip(
                    avatar: _selectedIndex == index
                        ? const Icon(
                            Icons.check,
                            color: Colors.white, // check icon for the selected
                          )
                        : null,
                    label: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0), // padding for the label

                      child: Text(
                        _options[index],
                        style: TextStyle(
                          fontSize: 18, // font size for the chip label
                          color: _selectedIndex == index
                              ? Colors.white // white text for selected chip
                              : Colors.black, // black text for unselected chips
                        ),
                      ),
                    ),
                    selected: _selectedIndex ==
                        index, // check if this chip is selected
                    selectedColor: Colors.green[400], // color when selected
                    backgroundColor:
                        Colors.grey[300], // color when not selected

                    elevation: 4, // elevation for shadow effect
                    pressElevation: 8, // elevation when pressed

                    shadowColor:
                        Colors.black54, // shadow color for elevation effect
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          16.0), // rounded corners for the chip
                      side: BorderSide(
                        color: _selectedIndex == index
                            ? Colors.green[
                                500]! // darker border for the selected chip
                            : Colors
                                .transparent, // no border for unselected chips
                        width: 2.0, // border width
                      ),
                    ),

                    onSelected: (bool selected) {
                      setState(() {
                        _selectedIndex = selected
                            ? index
                            : null; // update the selected index based on user selection
                      });
                    },
                  );
                }))
          ],
        ),
      ),
    );
  }
}
