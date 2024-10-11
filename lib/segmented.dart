import 'package:flutter/material.dart';

enum Options {
  pizza,
  burger,
  momo,
  frenchfries
} // define enum for the segmented button options

class MySegmentedButton extends StatefulWidget {
  const MySegmentedButton({super.key});

  @override
  State<MySegmentedButton> createState() => _MySegmentedButtonState();
}

class _MySegmentedButtonState extends State<MySegmentedButton> {
  Options? selectedOption; // track the selected option
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Segmented Button',
          style: TextStyle(fontSize: 26),
        ),
        backgroundColor: Colors.green[200],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Choose Your Fav Food:',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              // Create the segmentedbutton with options
              SegmentedButton<Options>(
                segments: const <ButtonSegment<Options>>[
                  ButtonSegment(
                    value: Options.pizza,
                    label: Text('🍕 Pizza'),
                  ),
                  ButtonSegment(
                    value: Options.burger,
                    label: Text('🍔 Burger'),
                  ),
                  ButtonSegment(
                    value: Options.momo,
                    label: Text('🥟 MoMo'),
                  ),
                  ButtonSegment(
                    value: Options.frenchfries,
                    label: Text('🍟 French Fries'),
                  ),
                ],
                selected: selectedOption != null ? {selectedOption!} : {},
                onSelectionChanged: (Set<Options> newSelection) {
                  setState(() {
                    // allow only one selection
                    selectedOption =
                        newSelection.isNotEmpty ? newSelection.first : null;
                  });
                },

                multiSelectionEnabled: false, // only allow single selection
                emptySelectionAllowed: true,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.teal[100]),
                  foregroundColor: const WidgetStatePropertyAll(Colors.black),
                  padding: const WidgetStatePropertyAll(
                      EdgeInsets.symmetric(vertical: 20)),
                  textStyle:
                      const WidgetStatePropertyAll(TextStyle(fontSize: 20)),
                ),

                showSelectedIcon: true,
                selectedIcon: const Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              // display the selected option as text

              const Text(
                'Selected Food:',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 10,
              ),

              Text(
                selectedOption == null
                    ? 'None'
                    : _formatOptionName(selectedOption!),
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.red[600],
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }

  // helper function to format option names

  String _formatOptionName(Options option) {
    switch (option) {
      case Options.pizza:
        return 'Pizza';

      case Options.burger:
        return 'Burger';

      case Options.momo:
        return 'MoMo';

      case Options.frenchfries:
        return 'French Fries';
    }
  }
}
