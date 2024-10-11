// import 'package:flutter/material.dart';

// class Quote extends StatelessWidget {
//   Quote({super.key});

//   final List<Map<String, String>> quotes = [
//     {
//       "text":
//           "The only limit to our realization of tomorrow is our doubts of today.",
//       "author": "Franklin D. Roosevelt"
//     },
//     {
//       "text": "Do what you can, with what you have, where you are.",
//       "author": "Theodore Roosevelt"
//     },
//     {
//       "text":
//           "Success is not final, failure is not fatal: It is the courage to continue that counts.",
//       "author": "Winston S. Churchill"
//     },
//     {
//       "text": "Believe you can and you're halfway there.",
//       "author": "Theodore Roosevelt"
//     },
//     {
//       "text":
//           "You are never too old to set another goal or to dream a new dream.",
//       "author": "C.S. Lewis"
//     }
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Inspiring Quotes'),
//         centerTitle: true,
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//                 colors: [
//                   Colors.purple[300]!, // end color of the gradient

//                   // Colors.green[300]!, //this is the start color of the gradient
//                   Colors.blue[300]!, // middle color of the gradient
//                 ],
//                 begin: Alignment.topLeft, // gradient start from top left
//                 end: Alignment.bottomRight), //gradient ends at bottom right
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [
//                 Colors.red[400]!, // end color of the gradient
//                 Colors.blue[400]!, // middle color of the gradient

//                 // Colors.green[300]!, //this is the start color of the gradient
//                 Colors.purple[400]!
//               ],
//               begin: Alignment.topLeft, // gradient start from top left
//               end: Alignment.bottomRight), //gradient ends at bottom right
//         ),
//         child: ListView.builder(
//           itemCount: quotes.length,
//           itemBuilder: (context, index) {
//             return _buildQuoteCard(context, quotes[index]);
//           },
//         ),
//       ),
//     );
//   }

//   Widget _buildQuoteCard(BuildContext context, Map<String, String> quote) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => QuoteDetailScreen(quote)),
//         );
//       },
//       child: Card(
//         margin: const EdgeInsets.all(15),
//         color: Colors.white.withOpacity(0.9),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//         elevation: 8,
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 quote["text"]!,
//                 style:
//                     const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 textAlign: TextAlign.left,
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 "- ${quote["author"]}",
//                 style:
//                     const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
//                 textAlign: TextAlign.right,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class QuoteDetailScreen extends StatelessWidget {
//   final Map<String, String> quote;

//   const QuoteDetailScreen(this.quote, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Quote Details'),
//         backgroundColor: Colors.purple[200],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [
//                 Colors.yellow[400]!,
//                 Colors.purple[400]!,
//                 Colors.blue[400]!,

//                 // Colors.red[400]!,
//               ],
//               begin: Alignment.topLeft, // gradient start from top left
//               end: Alignment.bottomRight), //gradient ends at bottom right
//         ),
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
//             child: Card(
//               color: Colors.white.withOpacity(0.9),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15)),
//               elevation: 8,
//               child: Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Text(
//                       quote["text"]!,
//                       style: const TextStyle(
//                           fontSize: 24, fontWeight: FontWeight.bold),
//                       textAlign: TextAlign.center,
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       "- ${quote["author"]}",
//                       style: const TextStyle(
//                           fontSize: 20, fontStyle: FontStyle.italic),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'dart:async';

// class FutureBuilderWidget extends StatelessWidget {
//   // Simulating a network call that returns data after 2 seconds
//   Future<String> fetchData() async {
//     await Future.delayed(Duration(seconds: 2));
//     return 'Data loaded successfully!';
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FutureBuilder Example'),
//       ),
//       body: Center(
//         child: FutureBuilder<String>(
//           future: fetchData(), // The future to wait for
//           initialData:
//               'Loading initial data...', // Optional: shows initial data
//           // Optional: used to track how many times the FutureBuilder rebuilds
//           builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//             // Check the current state of the future
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               // Display a loading indicator while the future is running
//               return CircularProgressIndicator();
//             } else if (snapshot.hasError) {
//               // Display an error message if the future fails
//               return Text(
//                 'Error: ${snapshot.error}',
//                 style: TextStyle(color: Colors.red),
//               );
//             } else if (snapshot.connectionState == ConnectionState.done) {
//               // Display the data when the future is completed
//               return Text(
//                 snapshot.data ?? 'No Data',
//                 style: TextStyle(fontSize: 18, color: Colors.green),
//               );
//             } else {
//               // Handle any other connection state
//               return Text('State: ${snapshot.connectionState}');
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class FutureBuilderWidget extends StatelessWidget {
//   // This is a sample asynchronous function that simulates a network call.
//   Future<String> fetchData() async {
//     await Future.delayed(Duration(seconds: 2)); // Simulate a network delay
//     return "Data fetched successfully!";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('FutureBuilder Example'),
//       ),
//       body: Center(
//         child: FutureBuilder<String>(
//           // Required properties
//           future: fetchData(), // The future to be resolved
//           builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//             // Checking the connection state of the future
//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return CircularProgressIndicator(); // Show loading indicator while waiting
//             } else if (snapshot.hasError) {
//               return Text(
//                   'Error: ${snapshot.error}'); // Show error message if there's an error
//             } else if (snapshot.hasData) {
//               return Text(
//                   'Result: ${snapshot.data}'); // Show the data when available
//             } else {
//               return Text('No data available'); // Fallback for no data case
//             }
//           },
//           initialData:
//               'Loading...', // Initial data displayed before future completes
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class FutureBuilderWidget extends StatelessWidget {
//   const FutureBuilderWidget({super.key});

//   // Simulating a network call with a delay
//   Future<String> fetchData() async {
//     await Future.delayed(const Duration(seconds: 2)); // Simulate network delay
//     return "Data fetched successfully!";
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [
//                 Colors.green[200]!, // middle color of the gradient

//                 Colors.blue[300]!,
//                 Colors.blue[200]!, // end color of the gradient
//                 //this is the start color of the gradient
//               ],
//               begin: Alignment.topLeft, // gradient start from top left
//               end: Alignment.bottomRight), //gradient ends at bottom right
//         ),
//         child: Center(
//           child: FutureBuilder<String>(
//             future: fetchData(), // The future to be resolved
//             initialData: 'Fetching data...', // Initial data while waiting
//             builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//               // Check the connection state of the future
//               switch (snapshot.connectionState) {
//                 case ConnectionState.waiting:
//                   return _buildLoadingIndicator(); // Show loading indicator
//                 case ConnectionState.done:
//                   if (snapshot.hasError) {
//                     return _buildErrorWidget(
//                         snapshot.error); // Show error message
//                   } else if (snapshot.hasData) {
//                     return _buildSuccessWidget(
//                         snapshot.data); // Show fetched data
//                   }
//                   break;
//                 default:
//                   return _buildErrorWidget(
//                       "Unknown state"); // Fallback for unknown state
//               }
//               return Container(); // Fallback container
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget to display while loading
//   Widget _buildLoadingIndicator() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         CircularProgressIndicator(), // Circular loading indicator
//         SizedBox(height: 20), // Spacing
//         Text('Loading...', style: TextStyle(fontSize: 20, color: Colors.grey)),
//       ],
//     );
//   }

//   // Widget to display on success
//   Widget _buildSuccessWidget(String? data) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.check_circle,
//                 color: Colors.green, size: 48), // Success icon
//             SizedBox(height: 10), // Spacing
//             Text('Result:',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//             SizedBox(height: 10), // Spacing
//             Text(data ?? '',
//                 style: TextStyle(fontSize: 18)), // Display fetched data
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget to display on error
//   Widget _buildErrorWidget(Object? error) {
//     return Card(
//       elevation: 4,
//       margin: EdgeInsets.all(16),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(Icons.error, color: Colors.red, size: 48), // Error icon
//             SizedBox(height: 10), // Spacing
//             Text('Error occurred:',
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//             SizedBox(height: 10), // Spacing
//             Text(error.toString(),
//                 style: TextStyle(fontSize: 18)), // Display error message
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class FutureBuilderWidget extends StatelessWidget {
//   const FutureBuilderWidget({super.key});

//   // Simulating a network call with a delay
//   Future<String> fetchData() async {
//     await Future.delayed(
//         const Duration(seconds: 2)); // Simulate a 2-second network delay
//     return "Data fetched successfully!"; // Return a success message after the delay
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // Set a gradient background for the entire screen
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: [
//                 Colors.green[200]!, // Start color of the gradient
//                 Colors.blue[300]!, // Middle color of the gradient
//                 Colors.blue[200]!, // End color of the gradient
//               ],
//               begin:
//                   Alignment.topLeft, // Gradient starts from the top left corner
//               end: Alignment
//                   .bottomRight), // Gradient ends at the bottom right corner
//         ),
//         child: Center(
//           child: FutureBuilder<String>(
//             future:
//                 fetchData(), // The future that will be resolved (fetching data)
//             initialData:
//                 'Fetching data...', // Initial message displayed while waiting for data
//             builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
//               // Check the connection state of the future
//               switch (snapshot.connectionState) {
//                 case ConnectionState.waiting:
//                   return _buildLoadingIndicator(); // Show loading indicator while waiting for data
//                 case ConnectionState.done:
//                   if (snapshot.hasError) {
//                     return _buildErrorWidget(snapshot
//                         .error); // Show error message if there's an error
//                   } else if (snapshot.hasData) {
//                     return _buildSuccessWidget(
//                         snapshot.data); // Show fetched data if successful
//                   }
//                   break;
//                 default:
//                   return _buildErrorWidget(
//                       "Unknown state"); // Fallback for unknown state
//               }
//               return Container(); // Fallback container in case no condition is met
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   // Widget to display while loading (waiting for data)
//   Widget _buildLoadingIndicator() {
//     return Column(
//       mainAxisAlignment:
//           MainAxisAlignment.center, // Center the loading indicator vertically
//       children: [
//         CircularProgressIndicator(), // Circular loading spinner to indicate progress
//         SizedBox(height: 20), // Space between loading spinner and text
//         Text('Loading...',
//             style: TextStyle(
//                 fontSize: 20, color: Colors.grey)), // Loading text message
//       ],
//     );
//   }

//   // Widget to display when data is successfully fetched
//   Widget _buildSuccessWidget(String? data) {
//     return Card(
//       elevation: 4, // Shadow effect for the card
//       margin: EdgeInsets.all(16), // Margin around the card
//       child: Padding(
//         padding: const EdgeInsets.all(16.0), // Padding inside the card
//         child: Column(
//           mainAxisSize: MainAxisSize
//               .min, // Minimize the height of the column based on content size
//           children: [
//             Icon(Icons.check_circle,
//                 color: Colors.green, size: 48), // Success icon (check mark)
//             SizedBox(height: 10), // Space between icon and text
//             Text('Result:',
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold)), // Title for result section
//             SizedBox(height: 10), // Space between title and result text
//             Text(data ?? '',
//                 style: TextStyle(
//                     fontSize:
//                         18)), // Display fetched data or empty string if null
//           ],
//         ),
//       ),
//     );
//   }

//   // Widget to display when an error occurs during fetching data
//   Widget _buildErrorWidget(Object? error) {
//     return Card(
//       elevation: 4, // Shadow effect for the card
//       margin: EdgeInsets.all(16), // Margin around the card
//       child: Padding(
//         padding: const EdgeInsets.all(16.0), // Padding inside the card
//         child: Column(
//           mainAxisSize:
//               MainAxisSize.min, // Minimize height based on content size
//           children: [
//             Icon(Icons.error,
//                 color: Colors.red, size: 48), // Error icon (red cross)
//             SizedBox(height: 10), // Space between icon and text
//             Text('Error occurred:',
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold)), // Title for error section
//             SizedBox(height: 10), // Space between title and error message text
//             Text(error.toString(),
//                 style:
//                     TextStyle(fontSize: 18)), // Display error message as text
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ButtonWidgetsDemo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Button Widgets Demo'),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blue[200]!,
//               Colors.purple[300]!,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Elevated Button
//             ElevatedButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Elevated Button Pressed!')));
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green, // Background color
//                 foregroundColor: Colors.white, // Text color
//                 padding: EdgeInsets.symmetric(
//                     horizontal: 20, vertical: 15), // Padding inside the button
//                 textStyle: TextStyle(fontSize: 20), // Text style
//               ),
//               child: Text('Elevated Button'),
//             ),
//             SizedBox(height: 20), // Spacing between buttons

//             // Text Button
//             TextButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Text Button Pressed!')));
//               },
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.blue, // Text color
//                 padding: EdgeInsets.symmetric(
//                     horizontal: 20, vertical: 15), // Padding inside the button
//                 textStyle: TextStyle(fontSize: 20), // Text style
//               ),
//               child: Text('Text Button'),
//             ),
//             SizedBox(height: 20), // Spacing between buttons

//             // Icon Button
//             IconButton(
//               icon: Icon(Icons.favorite,
//                   color: Colors.red, size: 30), // Icon to display
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Icon Button Pressed!')));
//               },
//               tooltip: 'Favorite', // Tooltip when long-pressed
//             ),
//             SizedBox(height: 20), // Spacing between buttons

//             // Floating Action Button
//             FloatingActionButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('Floating Action Button Pressed!')));
//               },
//               backgroundColor: Colors.orange, // Background color of FAB
//               child: Icon(Icons.add), // Icon inside FAB
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ButtonWidgetsDemo extends StatelessWidget {
//   const ButtonWidgetsDemo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // Set the Container to fill the whole screen
//         width: double.infinity, // Full width
//         height: double.infinity, // Full height
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Colors.blue[200]!,
//               Colors.purple[300]!,
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment:
//               MainAxisAlignment.center, // Center items vertically
//           crossAxisAlignment:
//               CrossAxisAlignment.center, // Center items horizontally
//           children: [
//             // Elevated Button
//             ElevatedButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text(
//                       'Elevated Button Pressed!',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.green[400], // Background color
//                 foregroundColor: Colors.black, elevation: 4,
//                 // Text color
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 30, vertical: 15), // Padding inside the button
//                 textStyle: const TextStyle(fontSize: 20), // Text style
//               ),
//               child: const Text(
//                 'Code Flicks',
//                 style: TextStyle(
//                   fontSize: 26,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 50), // Spacing between buttons

//             // Text Button
//             TextButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text(
//                       'Text Button Pressed!',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 );
//               },
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.black, // Text color
//                 elevation: 5,
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 20, vertical: 15), // Padding inside the button
//                 textStyle: const TextStyle(fontSize: 20), // Text style
//               ),
//               child: const Text(
//                 'Press Me',
//                 style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//               ),
//             ),

//             const SizedBox(height: 50), // Spacing between buttons

//             // Icon Button
//             IconButton(
//               icon: const Icon(Icons.fingerprint,
//                   color: Colors.black, size: 70), // Icon to display
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text(
//                       'Icon Button Pressed!',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 );
//               },
//               tooltip: 'fingerprint', // Tooltip when long-pressed
//             ),
//             const SizedBox(height: 50), // Spacing between buttons

//             // Floating Action Button
//             FloatingActionButton(
//               onPressed: () {
//                 // Action when button is pressed
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   const SnackBar(
//                     content: Text(
//                       'Floating Action Button Pressed!',
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 );
//               },
//               backgroundColor: Colors.blue[300], // Background color of FAB
//               child: const Icon(
//                 Icons.person,
//                 size: 50,
//               ), // Icon inside FAB
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class TooltipExample extends StatelessWidget {
//   const TooltipExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           ' Tooltip ',
//           style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.green[300], // Darker app bar color
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Tooltip for the first button
//             Tooltip(
//               message: 'Click to add an item',
//               padding: const EdgeInsets.all(10), // Padding around the tooltip
//               margin: const EdgeInsets.symmetric(
//                   horizontal: 20, vertical: 10), // Margin around the tooltip
//               decoration: BoxDecoration(
//                 color: Colors.green[200], // Background color of the tooltip
//                 borderRadius: BorderRadius.circular(8), // Rounded corners

//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 8.0,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               textStyle: const TextStyle(
//                 color: Colors.black, // Text color inside the tooltip
//                 fontWeight: FontWeight.bold, // Bold text
//               ),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.blue[500], // Button background color
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 30, vertical: 15), // Button padding
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.circular(50), // Rounded button corners
//                   ),
//                   elevation: 5, // Button elevation for shadow effect
//                 ),
//                 child: const Text('Add Item', style: TextStyle(fontSize: 18)),
//               ),
//             ),
//             const SizedBox(height: 80), // Space between buttons

//             // Tooltip for the second button
//             Tooltip(
//               message: 'Click to remove an item',
//               padding: const EdgeInsets.all(10),
//               margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               decoration: BoxDecoration(
//                 color: Colors.red[300],
//                 borderRadius: BorderRadius.circular(8),
//                 boxShadow: const [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 8.0,
//                     offset: Offset(0, 4),
//                   ),
//                 ],
//               ),
//               textStyle: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.blue[500],
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius:
//                         BorderRadius.circular(50), // Rounded button corners
//                   ),
//                   elevation: 5, // Button elevation for shadow effect
//                 ),
//                 child:
//                     const Text('Remove Item', style: TextStyle(fontSize: 18)),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MyDropdownButton extends StatefulWidget {
//   @override
//   _MyDropdownButtonState createState() => _MyDropdownButtonState();
// }

// class _MyDropdownButtonState extends State<MyDropdownButton> {
//   String? selectedValue; // Variable to hold the selected value
//   final List<String> items = [
//     'Coding',
//     'Photography',
//     'Reading',
//     'Cooking',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dropdown Button'),
//         backgroundColor: Colors.teal[100], // App bar color
//       ),
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.symmetric(
//               horizontal: 56), // Padding around the dropdown
//           child: DropdownButton<String>(
//             isExpanded:
//                 true, // Makes the dropdown button expand to fill available space
//             hint: Text(
//               'Select Hobby',
//               style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.grey[600],
//                   fontWeight: FontWeight.bold), // Hint text style
//             ),
//             items: items.map((String item) {
//               return DropdownMenuItem<String>(
//                 value: item,
//                 child: Text(
//                   item,
//                   style: const TextStyle(
//                     fontSize: 18,
//                   ), // Item text style
//                 ),
//               );
//             }).toList(),
//             value: selectedValue, // Current selected value
//             onChanged: (String? value) {
//               setState(() {
//                 selectedValue = value; // Update the selected value
//               });
//             },
//             dropdownColor:
//                 Colors.teal[100], // Background color of the dropdown menu
//             style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 16), // Style of the selected item text
//             underline: Container(), // Remove underline for a cleaner look
//             iconEnabledColor: Colors.black, // Color of the dropdown icon
//             iconSize: 40, // Size of the dropdown icon
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class BottomNavBarDemo extends StatefulWidget {
//   @override
//   _BottomNavBarDemoState createState() => _BottomNavBarDemoState();
// }

// class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
//   // Current index of the selected bottom navigation bar item
//   int _currentIndex = 0;
//   // List of pages to display based on the selected item
//   final List<Widget> _pages = [
//     HomePage(),
//     SearchPage(),
//     ProfilePage(),
//     SettingsPage(),
//   ];

//   // Function to handle item taps
//   void _onItemTapped(int index) {
//     setState(() {
//       _currentIndex = index; // Update the current index
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Bottom Navigation Bar Example'),
//         backgroundColor: Colors.teal[100],
//       ),
//       body: _pages[_currentIndex], // Display the selected page
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//             backgroundColor: Color.fromARGB(
//                 255, 143, 196, 239), // Background color for the item
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search),
//             label: 'Search',
//             backgroundColor: Color.fromARGB(
//                 255, 124, 228, 128), // Background color for the item
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//             backgroundColor: Color.fromARGB(
//                 255, 230, 170, 80), // Background color for the item
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Settings',
//             backgroundColor: Color.fromARGB(
//                 255, 191, 99, 207), // Background color for the item
//           ),
//         ],
//         currentIndex: _currentIndex, // Set the current index
//         selectedItemColor: Colors.white, // Color of selected item text and icon
//         unselectedItemColor: Colors.black54, // Color of unselected items
//         showUnselectedLabels: true, // Show labels for unselected items
//         onTap: _onItemTapped, // Handle taps on items
//         elevation: 5, // Elevation for shadow effect
//       ),
//     );
//   }
// }

// // Home Page Widget
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Home Page',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//   }
// }

// // Search Page Widget
// class SearchPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Search Page',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//   }
// }

// // Profile Page Widget
// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Profile Page',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//   }
// }

// // Settings Page Widget
// class SettingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//         child: Text('Settings Page',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)));
//   }
// }

// import 'package:flutter/material.dart';

// class DismissibleExample extends StatefulWidget {
//   const DismissibleExample({Key? key}) : super(key: key);

//   @override
//   State<DismissibleExample> createState() => _DismissibleExampleState();
// }

// class _DismissibleExampleState extends State<DismissibleExample> {
//   // List of items to display
//   final List<String> items = [
//     "Apple",
//     "Banana",
//     "Cherry",
//     "Date",
//     "Elderberry"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dismissible Widget Example'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return Dismissible(
//             // Each Dismissible must contain a Key. Keys allow Flutter to uniquely identify widgets.
//             key: Key(items[index]),
//             // Callback that is called when the item is dismissed
//             onDismissed: (direction) {
//               // Remove the item from the data source
//               setState(() {
//                 items.removeAt(index);
//               });
//               // Show a snackbar to provide feedback to the user
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text('${items[index]} dismissed')),
//               );
//             },
//             // Background widget displayed when swiping
//             background: Container(
//               color: Colors.green,
//               alignment: Alignment.centerLeft,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: const Icon(Icons.check, color: Colors.white),
//             ),
//             // Secondary background widget displayed when swiping in the opposite direction
//             secondaryBackground: Container(
//               color: Colors.red,
//               alignment: Alignment.centerRight,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: const Icon(Icons.delete, color: Colors.white),
//             ),
//             // The main content of the Dismissible widget
//             child: Card(
//               margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//               elevation: 5,
//               child: ListTile(
//                 title: Text(items[index]),
//                 trailing: const Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DismissibleExample extends StatefulWidget {
//   const DismissibleExample({Key? key}) : super(key: key);

//   @override
//   State<DismissibleExample> createState() => _DismissibleExampleState();
// }

// class _DismissibleExampleState extends State<DismissibleExample> {
//   // List of items to display
//   final List<String> items = [
//     "Apple",
//     "Banana",
//     "Cherry",
//     "Date",
//     "Elderberry"
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Dismissible Widget Example'),
//       ),
//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return Dismissible(
//             // Each Dismissible must contain a Key. Keys allow Flutter to uniquely identify widgets.
//             key: Key(items[index]),
//             // Callback that is called when the item is dismissed
//             onDismissed: (direction) {
//               // Store the item being dismissed
//               String dismissedItem = items[index];

//               // Remove the item from the data source
//               setState(() {
//                 items.removeAt(index);
//               });

//               // Show a snackbar to provide feedback to the user
//               ScaffoldMessenger.of(context).showSnackBar(
//                 SnackBar(content: Text('$dismissedItem dismissed')),
//               );
//             },
//             // Background widget displayed when swiping
//             background: Container(
//               color: Colors.green,
//               alignment: Alignment.centerLeft,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: const Icon(Icons.check, color: Colors.white),
//             ),
//             // Secondary background widget displayed when swiping in the opposite direction
//             secondaryBackground: Container(
//               color: Colors.red,
//               alignment: Alignment.centerRight,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: const Icon(Icons.delete, color: Colors.white),
//             ),
//             // The main content of the Dismissible widget
//             child: Card(
//               margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//               elevation: 5,
//               child: ListTile(
//                 title: Text(items[index]),
//                 trailing: const Icon(Icons.arrow_forward_ios),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MyPage extends StatefulWidget {
//   const MyPage({super.key});

//   @override
//   _MyLiquidState createState() => _MyLiquidState();
// }

// class _MyLiquidState extends State<MyPage> {
//   // Create a PageController to control the PageView
//   final PageController _controller = PageController();

//   // Current page index
//   int _currentPage = 0;

//   // List of pages to display in the PageView
//   final List<Widget> _pages = [
//     Container(
//       color: Colors.teal[200],
//       child: const Center(
//           child: Text('Welcome to Page 1',
//               style: TextStyle(fontSize: 24, color: Colors.white))),
//     ),
//     Container(
//       color: Colors.blue[200],
//       child: const Center(
//           child: Text('This is Page 2',
//               style: TextStyle(fontSize: 24, color: Colors.white))),
//     ),
//     Container(
//       color: Colors.purple[200],
//       child: const Center(
//           child: Text('You are on Page 3',
//               style: TextStyle(fontSize: 24, color: Colors.white))),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('PageView Example'),
//       ),
//       body: PageView(
//         // Set the scroll direction to horizontal
//         scrollDirection: Axis.horizontal,
//         // Set the controller for the PageView
//         controller: _controller,
//         // Enable page snapping
//         pageSnapping: true,
//         // Physics for scrolling behavior
//         physics: const BouncingScrollPhysics(),
//         // Callback when the page changes
//         onPageChanged: (index) {
//           setState(() {
//             _currentPage = index; // Update current page index
//           });
//         },
//         // List of pages to display
//         children: _pages,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
//           BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Page 2'),
//           BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Page 3'),
//         ],
//         currentIndex: _currentPage, // Highlight current page
//         onTap: (index) {
//           _controller.jumpToPage(index); // Jump to selected page
//         },
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class My_SwitchListTile extends StatefulWidget {
//   @override
//   _SwitchListTileExampleState createState() => _SwitchListTileExampleState();
// }

// class _SwitchListTileExampleState extends State<My_SwitchListTile> {
//   // Variable to hold the state of the switch
//   bool _isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'SwitchListTile Example',
//         ),
//         backgroundColor: Colors.green[200],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // SwitchListTile widget
//             SwitchListTile(
//               title: Text(
//                 'Enable Notifications',
//                 style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
//               ),
//               subtitle: Text('Receive daily updates from code flicks'),
//               value: _isSwitched, // Current state of the switch
//               onChanged: (bool value) {
//                 setState(() {
//                   _isSwitched = value; // Update the switch state
//                 });
//               },
//               secondary: Icon(Icons.notifications,
//                   color: Colors.blue), // Icon on the left
//               activeColor: Colors.green, // Color when the switch is on
//               inactiveThumbColor: Colors.red, // Color when the switch is off
//             ),
//             SizedBox(height: 20), // Space between elements
//             // Display current state message
//             Text(
//               _isSwitched ? 'Notifications are ON' : 'Notifications are OFF',
//               style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class My_Card extends StatefulWidget {
//   @override
//   _MyShimmerState createState() => _MyShimmerState();
// }

// class _MyShimmerState extends State<My_Card> {
//   // List to hold the items
//   List<String> items = List.generate(20, (index) => 'Item ${index + 1}');

//   // Function to simulate data fetching
//   Future<void> _refreshData() async {
//     // Simulate a network call with a delay
//     await Future.delayed(Duration(seconds: 2));

//     // Update the list with new data (for demonstration purposes)
//     setState(() {
//       items = List.generate(20, (index) => 'New Item ${index + 1}');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('RefreshIndicator Example'),
//       ),
//       body: RefreshIndicator(
//         // Trigger the refresh action when pulled down
//         onRefresh: _refreshData,
//         // Color of the indicator when refreshing
//         color: Colors.white,
//         // Background color of the indicator
//         backgroundColor: Colors.blue,
//         // Displacement of the indicator from the top of the screen
//         displacement: 40.0,
//         // Child widget that will be wrapped in the RefreshIndicator
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return Card(
//               margin: EdgeInsets.all(10),
//               elevation: 5,
//               child: ListTile(
//                 leading: Icon(Icons.list, color: Colors.blue),
//                 title: Text(
//                   items[index],
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 subtitle: Text('This is item number ${index + 1}'),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

//
//
//
//
//

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyPOP());
// }

// class MyPOP extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Card Widget Example',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: My_Card(),
//     );
//   }
// }

// class My_Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Card Widget Example'),
//       ),
//       body: Center(
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Card with various properties
//               Card(
//                 // Margin around the card
//                 margin: EdgeInsets.all(16),
//                 // Elevation for shadow effect
//                 elevation: 10,
//                 // Background color of the card
//                 color: Colors.white,
//                 // Shape of the card with rounded corners
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(15),
//                   side: BorderSide(color: Colors.blueAccent, width: 2),
//                 ),
//                 // Clip behavior to clip child content
//                 clipBehavior: Clip.antiAlias,
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Image widget inside the card
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: Image.network(
//                           'https://media.istockphoto.com/id/1290079537/photo/view-of-world-famous-iguasu-waterfalls-in-brazil.jpg?s=612x612&w=0&k=20&c=ofh2JmjM_KMHMf3SOHPQ8vdq_hRqMXvAuyCm9x354vw=',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(height: 12), // Space between image and text
//                       // Title text
//                       Text(
//                         'Beautiful Landscape',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(height: 8), // Space between title and subtitle
//                       // Subtitle text
//                       Text(
//                         'A breathtaking view of nature.',
//                         style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                       ),
//                       SizedBox(height: 12), // Space before button
//                       // Action button
//                       ElevatedButton(
//                         onPressed: () {
//                           // Action when button is pressed
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(content: Text('Button Pressed!')),
//                           );
//                         },
//                         child: Text('View More'),
//                         style: ElevatedButton.styleFrom(
//                           foregroundColor: Colors.blue, // Button color
//                           padding: EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 10),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class FirstPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("First Page"),
//         backgroundColor: Colors.blue[200],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal[200]!, Colors.blue[200]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('Welcome to Code Flicks!',
//                   style: TextStyle(fontSize: 24, color: Colors.white)),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () => Navigator.push(
//                   // Navigate to SecondPage when pressed
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           SecondPage()), //Create a new route for SecondPage
//                 ),
//                 child: Text('Go to Second Page'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Second Page"),
//         backgroundColor: Colors.teal[200],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue[200]!, Colors.teal[200]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text('You are on the Second Page!',
//                   style: TextStyle(fontSize: 24, color: Colors.white)),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(
//                     context), // Navigate back to previous page when pressed
//                 child: Text('Go Back'), // Button text for going back
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class My_Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'AlertDialog',
//         ),
//         backgroundColor: Colors.green[200],
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text(
//             'Show AlertDialog',
//             style: TextStyle(
//               fontSize: 18,
//             ),
//           ),
//           onPressed: () => _showAlterDialog(context),
//           style: ElevatedButton.styleFrom(
//             // backgroundColor: Colors.blue, // Background color
//             // foregroundColor: Colors.black, // Text (foreground) color
//             elevation: 5, // Shadow elevation
//             padding:
//                 EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Padding
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20), // Rounded corners
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   // Function to display the enhanced AlertDialog
//   void _showAlterDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Row(
//             children: [
//               Icon(Icons.warning, color: Colors.red), // Warning Icon
//               SizedBox(width: 10), // Spacing between icon and text
//               Text('Warning!'), // Title of the dialog
//             ],
//           ),
//           content: Text(
//             'Are you ready to embrace the chaos? 😅\n'
//             'Once you hit “OK,” there’s no turning back 🔙, just coding 🧑🏻‍💻 ahead🔥\n '
//             '                                     - Code Flicks',

//             style: TextStyle(fontSize: 16), // Custom font size
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.red,
//               ),
//               child: Text(
//                 'Cancel',
//                 style: TextStyle(color: Colors.red),
//               ), // Cancel button with custom color
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//             ),
//             ElevatedButton(
//               child: Text('OK',
//                   style: TextStyle(
//                       color: Colors.green)), // Confirm button with custom color
//               style: ElevatedButton.styleFrom(
//                   foregroundColor: Colors.green), // Custom button color
//               onPressed: () {
//                 // Add your action here
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//             ),
//           ],
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(40), // Rounded corners
//           ),
//           backgroundColor: Colors.white, // Background color of the dialog
//           elevation: 10, // Shadow elevation
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class FitnessStepper extends StatefulWidget {
//   @override
//   _FitnessStepperState createState() => _FitnessStepperState();
// }

// // State class for managing the stepper's state
// class _FitnessStepperState extends State<FitnessStepper> {
//   // Variable to track the current step index
//   int _currentStep = 0;

//   // List of steps in the stepper
//   List<Step> get steps => [
//         Step(
//           title: const Text(
//             'Welcome',
//             style: TextStyle(fontSize: 18),
//           ), // Title of the first step
//           content: const Text(
//             'Let’s get started on your fitness journey!',
//           ), // Content for the first step
//           isActive: true, // Mark this step as active
//         ),
//         Step(
//           title: const Text(
//             'Set Your Goal',
//             style: TextStyle(fontSize: 18),
//           ), // Title of the second step
//           content: const Text(
//               'What is your primary fitness goal?'), // Content for the second step
//           isActive: _currentStep >= 1, // Active if current step is 1 or more
//         ),
//         Step(
//           title: const Text(
//             'Workout Frequency',
//             style: TextStyle(fontSize: 18),
//           ), // Title of the third step
//           content: const Text(
//               'How often do you want to work out?'), // Content for the third step
//           isActive: _currentStep >= 2, // Active if current step is 2 or more
//         ),
//         Step(
//           title: const Text(
//             'Diet Preferences',
//             style: TextStyle(fontSize: 18),
//           ), // Title of the fourth step
//           content: const Text(
//               'Do you have any dietary preferences?'), // Content for the fourth step
//           isActive: _currentStep >= 3, // Active if current step is 3 or more
//         ),
//         Step(
//           title: const Text(
//             'Ready to Start!',
//             style: TextStyle(fontSize: 18),
//           ), // Title of the fifth step
//           content: const Text(
//               'You’re all set to begin your fitness journey! Let’s go!'), // Content for the fifth step
//           isActive: _currentStep >= 4, // Active if current step is 4 or more
//         ),
//       ];

//   // Function to move to the next step in the stepper
//   void _nextStep() {
//     if (_currentStep < steps.length - 1) {
//       // Check if not at last step
//       setState(
//           () => _currentStep++); // Increment current step index and rebuild UI
//     }
//   }

//   // Function to move to the previous step in the stepper
//   void _prevStep() {
//     if (_currentStep > 0) {
//       // Check if not at first step
//       setState(
//           () => _currentStep--); // Decrement current step index and rebuild UI
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Fitness Onboarding', // Title of the app bar
//         ),
//         backgroundColor: Colors.blue[200], // Background color of the app bar
//       ),
//       body: Stepper(
//         type: StepperType.vertical, // Set vertical orientation for the stepper
//         currentStep: _currentStep, // Current active step index
//         onStepContinue:
//             _nextStep, // Function called when continuing to next step
//         onStepCancel:
//             _prevStep, // Function called when canceling back to previous step
//         steps: steps, // List of steps defined above
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class CustomSlider extends StatefulWidget {
//   @override
//   _CustomSliderState createState() => _CustomSliderState();
// }

// class _CustomSliderState extends State<CustomSlider> {
//   double _currentValue = 50; // Initial value of the slider

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Custom Slider"),
//         backgroundColor: Colors.teal,
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Value: ${_currentValue.toStringAsFixed(1)}', // Display current value
//               style: TextStyle(fontSize: 24, color: Colors.black),
//             ),
//             SliderTheme(
//               data: SliderTheme.of(context).copyWith(
//                 activeTrackColor: Colors.teal,
//                 inactiveTrackColor: Colors.grey,
//                 thumbColor: Colors.tealAccent,
//                 overlayColor: Colors.teal.withOpacity(0.2),
//                 valueIndicatorColor: Colors.tealAccent,
//                 valueIndicatorTextStyle:
//                     TextStyle(color: Colors.white, fontSize: 16),
//               ),
//               child: Slider(
//                 value: _currentValue,
//                 min: 0,
//                 max: 100,
//                 divisions: 10, // Number of discrete divisions
//                 label: _currentValue
//                     .round()
//                     .toString(), // Show label with current value
//                 onChanged: (double newValue) {
//                   setState(() {
//                     _currentValue = newValue; // Update the current value
//                   });
//                 },
//                 onChangeStart: (double startValue) {
//                   print('Started at $startValue'); // Log start value
//                 },
//                 onChangeEnd: (double endValue) {
//                   print('Ended at $endValue'); // Log end value
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class DraggableSheetExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Draggable Scrollable Sheet"),
//         backgroundColor: Colors.teal,
//       ),
//       body: Stack(
//         children: [
//           // Background content
//           Center(
//             child: Text(
//               'Drag up the sheet!',
//               style: TextStyle(fontSize: 24),
//             ),
//           ),
//           // DraggableScrollableSheet
//           DraggableScrollableSheet(
//             initialChildSize: 0.25, // Initial height of the sheet
//             minChildSize: 0.1, // Minimum height of the sheet
//             maxChildSize: 0.8, // Maximum height of the sheet
//             builder: (BuildContext context, ScrollController scrollController) {
//               return ClipRRect(
//                 borderRadius: BorderRadius.vertical(
//                     top: Radius.circular(16)), // Rounded corners
//                 child: Container(
//                   color: Colors.white,
//                   child: ListView.builder(
//                     controller: scrollController,
//                     itemCount: 30, // Number of items in the list
//                     itemBuilder: (context, index) {
//                       return ListTile(
//                         title: Text('Item ${index + 1}'), // List item text
//                         tileColor: index.isOdd
//                             ? Colors.teal[100]
//                             : Colors.white, // Alternate colors for items
//                       );
//                     },
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class SearchExample extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Search Example"), // Title of the app bar
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search), // Search icon in the app bar
//             onPressed: () {
//               showSearch(
//                 context: context,
//                 delegate: CustomSearchDelegate(), // Custom search delegate
//               );
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text(
//             'Press the search icon to start searching!'), // Placeholder text
//       ),
//     );
//   }
// }

// // Custom Search Delegate class
// class CustomSearchDelegate extends SearchDelegate<String> {
//   final List<String> items =
//       List.generate(50, (index) => 'Item ${index + 1}'); // Sample data

//   @override
//   String get searchFieldLabel =>
//       'Search items...'; // Placeholder for the search field

//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear), // Clear button to reset search
//         onPressed: () {
//           query = ''; // Clear the query
//           showSuggestions(context); // Show suggestions again after clearing
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back), // Back button to close search
//       onPressed: () {
//         close(context,
//             ''); // Close the search delegate with an empty string instead of null
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final results = items
//         .where((item) => item.toLowerCase().contains(query.toLowerCase()))
//         .toList(); // Filter results based on query

//     return results.isNotEmpty
//         ? ListView.builder(
//             itemCount: results.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(results[index]), // Display filtered results
//                 onTap: () {
//                   close(context,
//                       results[index]); // Close and return selected item
//                 },
//               );
//             },
//           )
//         : Center(child: Text('No results found.')); // Handle no results case
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestions = items
//         .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
//         .toList(); // Suggest items based on query

//     return suggestions.isNotEmpty
//         ? ListView.builder(
//             itemCount: suggestions.length,
//             itemBuilder: (context, index) {
//               return ListTile(
//                 title: Text(suggestions[index]), // Display suggestions
//                 onTap: () {
//                   query = suggestions[
//                       index]; // Update query with selected suggestion
//                   showResults(
//                       context); // Show results for the selected suggestion
//                 },
//               );
//             },
//           )
//         : Center(
//             child: Text('No suggestions found.')); // Handle no suggestions case
//   }
// }

// // card widget beautiful ui
// import 'package:flutter/material.dart';

// class My_Card extends StatelessWidget {
//   const My_Card({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Card Widget'),
//         backgroundColor: Colors.blueGrey[100],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Card with various properties
//             Card(
//               // Margin around the card
//               margin: const EdgeInsets.all(18),
//               // Elevation for shadow effect
//               elevation: 10,
//               // Background color of the card
//               color: Colors.blue[100],
//               // Shape of the card with rounded corners
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(15),
//                 side: const BorderSide(color: Colors.blue, width: 2),
//               ),
//               // Clip behavior to clip child content
//               clipBehavior: Clip.antiAlias,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     // Image widget inside the card
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.network(
//                         'https://cdn.pixabay.com/photo/2024/05/15/20/57/developer-8764524_1280.jpg',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     const SizedBox(height: 12), // Space between image and text
//                     // Title text
//                     const Text(
//                       'Developer',
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(
//                         height: 8), // Space between title and subtitle
//                     // Subtitle text
//                     Text(
//                       'Taking a quick power nap to fix all bugs.',
//                       style: TextStyle(fontSize: 16, color: Colors.grey[600]),
//                     ),
//                     const SizedBox(height: 12), // Space before button
//                     // Action button
//                     ElevatedButton(
//                       onPressed: () {
//                         // Action when button is pressed
//                         ScaffoldMessenger.of(context).showSnackBar(
//                           const SnackBar(
//                             backgroundColor: Color.fromARGB(255, 186, 219, 247),
//                             content: Text(
//                               'Button Pressed!',
//                               style: TextStyle(color: Colors.black),
//                             ),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         foregroundColor: Colors.blueGrey, // Button color
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 10),
//                       ),
//                       child: const Text('View More'),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_slidable/flutter_slidable.dart';

// class SlidableContactList extends StatefulWidget {
//   @ovew
//   _SlidableContactListState createState() => _SlidableContactListState();
// }

// class _SlidableContactListState extends State<SlidableContactList> {
//   List<String> contacts = List.generate(10, (index) => 'Contact ${index + 1}');

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Contacts'),
//       ),
//       body: ListView.builder(
//         itemCount: contacts.length,
//         itemBuilder: (context, index) {
//           return Slidable(
//             // Wrap each contact in a Slidable widget
//             child: Card(
//               margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//               elevation: 2,
//               child: ListTile(
//                 leading: Icon(Icons.person, color: Colors.blue),
//                 title: Text(contacts[index]),
//                 subtitle: Text('Swipe to delete'),
//                 trailing: Icon(Icons.chevron_right),
//               ),
//             ),
//             // Start action pane for swipe from left to right
//             startActionPane: ActionPane(
//               motion: const DrawerMotion(),
//               children: [
//                 SlidableAction(
//                   onPressed: (context) {
//                     // Action to call the contact
//                     ScaffoldMessenger.of(context).showSnackBar(
//                         SnackBar(content: Text('Calling ${contacts[index]}')));
//                   },
//                   backgroundColor: Colors.green,
//                   foregroundColor: Colors.white,
//                   icon: Icons.call,
//                   label: 'Call',
//                 ),
//               ],
//             ),
//             // End action pane for swipe from right to left
//             endActionPane: ActionPane(
//               motion: const ScrollMotion(),
//               children: [
//                 SlidableAction(
//                   onPressed: (context) {
//                     // Confirm deletion of the contact
//                     _confirmDelete(context, index);
//                   },
//                   backgroundColor: Colors.red,
//                   foregroundColor: Colors.white,
//                   icon: Icons.delete,
//                   label: 'Delete',
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }

//   void _confirmDelete(BuildContext context, int index) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Delete Contact'),
//           content: Text('Are you sure you want to delete ${contacts[index]}?'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: Text('Cancel'),
//             ),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   contacts.removeAt(index); // Remove the contact from the list
//                 });
//                 Navigator.of(context).pop(); // Close the dialog
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     SnackBar(content: Text('${contacts[index]} deleted')));
//               },
//               child: Text('Delete'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:badges/badges.dart'
//     as badges; // Importing the badges package with alias

// class BadgeDemo extends StatefulWidget {
//   @override
//   _BadgeDemoState createState() => _BadgeDemoState();
// }

// class _BadgeDemoState extends State<BadgeDemo> {
//   int _cartItemCount = 5; // Initial cart item count

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Badges Example'),
//         backgroundColor: Colors.green[100],
//         actions: [
//           // Badge on shopping cart icon
//           badges.Badge(
//             badgeContent: Text(
//               '$_cartItemCount', // Display the item count
//               style: TextStyle(
//                   color: Colors.white, fontSize: 16), // Style for text
//             ),
//             badgeStyle: badges.BadgeStyle(
//               badgeColor: Colors.red, // Badge background color
//               padding: EdgeInsets.all(8), // Padding inside the badge
//               borderRadius: BorderRadius.circular(4), // Rounded corners
//             ),
//             position: badges.BadgePosition.topEnd(
//                 top: -8, end: -10), // Position of the badge
//             child: IconButton(
//               icon: Icon(Icons.shopping_cart, size: 30), // Shopping cart icon
//               onPressed: () {
//                 setState(() {
//                   _cartItemCount++; // Increment item count for demo purpose
//                 });
//               },
//             ),
//           ),
//           SizedBox(width: 20), // Space between icons
//           badges.Badge(
//             badgeContent:
//                 Icon(Icons.star, color: Colors.white), // Star icon in badge
//             badgeStyle: badges.BadgeStyle(
//               badgeColor: Colors.green, // Green badge for notifications
//               padding: EdgeInsets.all(8), // Padding inside the badge
//               borderRadius: BorderRadius.circular(4), // Rounded corners
//             ),
//             position: badges.BadgePosition.topStart(
//                 top: -12, start: -10), // Position of the badge
//             child: IconButton(
//               icon: Icon(Icons.notifications, size: 30), // Notifications icon
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(content: Text('You have new notifications!')),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//         // decoration: BoxDecoration(
//         //   gradient: LinearGradient(colors: [
//         //     Colors.green[200]!,
//         //     Colors.blue[200]!,
//         //   ], begin: Alignment.topRight, end: Alignment.bottomLeft),
//         // ),
//         child: Center(
//           child: Text(
//             'Press the icons to see badge interactions!',
//             style: TextStyle(fontSize: 18),
//           ),
//         ),
//       ),
//     );
//   }
// }

// material route

// import 'package:flutter/material.dart';

// class My_FirstPage extends StatelessWidget {
//   const My_FirstPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("First Page"),
//         backgroundColor: Colors.blue[200],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.teal[200]!, Colors.blue[200]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "Welcome to Code Flicks😊",
//                 style: TextStyle(
//                   fontSize: 26,
//                   color: Colors.white,
//                 ),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () => Navigator.push(
//                   // navigate to secondpage when pressed
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           const SecondPage()), // create a new route for secondpage
//                 ),
//                 child: const Text("Go to Second Page"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SecondPage extends StatelessWidget {
//   const SecondPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Second Page"),
//         backgroundColor: Colors.teal[200],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue[200]!, Colors.teal[200]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text(
//                 "You are on the Second PagePage😉",
//                 style: TextStyle(fontSize: 24, color: Colors.white),
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               ElevatedButton(
//                 onPressed: () => Navigator.pop(
//                     context), // Navigate back to previous page when pressed

//                 child: const Text("Go Back"), // button text for going back
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Enhanced Flutter Rating Bar Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: Colors.white),
//           headline6:
//               TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//       home: RatingBarDemo(),
//     );
//   }
// }

// class RatingBarDemo extends StatefulWidget {
//   @override
//   _RatingBarDemoState createState() => _RatingBarDemoState();
// }

// class _RatingBarDemoState extends State<RatingBarDemo> {
//   double _rating = 3.5; // Initial rating

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blueAccent, Colors.purpleAccent],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Card(
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20), // Rounded corners
//             ),
//             color: Colors.white.withOpacity(0.9), // Semi-transparent card
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'Rate Us',
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline6
//                         .copyWith(fontSize: 28),
//                   ),
//                   SizedBox(height: 20),
//                   // Display the rating bar
//                   RatingBar.builder(
//                     initialRating: _rating,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemSize: 50.0,
//                     unratedColor: Colors.grey.withOpacity(
//                         0.5), // More subtle color for unrated stars
//                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber, // Color for rated stars
//                     ),
//                     onRatingUpdate: (rating) {
//                       setState(() {
//                         _rating =
//                             rating; // Update the rating state on user interaction
//                       });
//                       print(rating); // Print the rating to console
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'Your Rating:',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyText1
//                         .copyWith(fontSize: 24),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     _rating.toString(),
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline6
//                         .copyWith(fontSize: 32),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class RatingBarDemo extends StatefulWidget {
//   @override
//   _RatingBarDemoState createState() => _RatingBarDemoState();
// }

// class _RatingBarDemoState extends State<RatingBarDemo> {
//   double _rating = 3.5; // Initial rating

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue[200]!, Colors.green[100]!],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Center(
//           child: Card(
//             elevation: 10,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20), // Rounded corners
//             ),
//             color: Colors.white.withOpacity(0.9), // Semi-transparent card
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Text(
//                     'Rate Us',
//                     style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                   SizedBox(height: 20),
//                   // Display the rating bar
//                   RatingBar.builder(
//                     initialRating: _rating,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemSize: 50.0,
//                     unratedColor: Colors.grey.withOpacity(
//                         0.5), // More subtle color for unrated stars
//                     itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber, // Color for rated stars
//                     ),
//                     onRatingUpdate: (rating) {
//                       setState(() {
//                         _rating =
//                             rating; // Update the rating state on user interaction
//                       });
//                       print(rating); // Print the rating to console
//                     },
//                   ),
//                   SizedBox(height: 20),
//                   Text(
//                     'Your Rating:',
//                     style: TextStyle(fontSize: 24, color: Colors.black),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     _rating.toString(),
//                     style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// class RatingBarDemo extends StatefulWidget {
//   @override
//   _RatingBarDemoState createState() => _RatingBarDemoState();
// }

// class _RatingBarDemoState extends State<RatingBarDemo> {
//   double _rating = 3.5; // Initial rating set to 3.5

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // Container to hold the gradient background
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blue[200]!, Colors.green[200]!], // Gradient colors
//             begin: Alignment.topLeft, // Start of the gradient
//             end: Alignment.bottomRight, // End of the gradient
//           ),
//         ),
//         child: Center(
//           child: Card(
//             elevation: 10, // Shadow effect for the card
//             shape: RoundedRectangleBorder(
//               borderRadius:
//                   BorderRadius.circular(20), // Rounded corners for the card
//             ),
//             color: Colors.white.withOpacity(
//                 0.9), // Semi-transparent white background for the card
//             child: Padding(
//               padding: const EdgeInsets.all(20.0), // Padding inside the card
//               child: Column(
//                 mainAxisSize:
//                     MainAxisSize.min, // Minimize space taken by the column
//                 children: <Widget>[
//                   Text(
//                     'Rate Us', // Title text for rating prompt
//                     style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                   SizedBox(height: 20), // Space between title and rating bar

//                   // Rating Bar Widget
//                   RatingBar.builder(
//                     initialRating:
//                         _rating, // Set initial rating from state variable
//                     minRating: 1, // Minimum rating value (1 star)
//                     direction: Axis.horizontal, // Arrange stars horizontally
//                     allowHalfRating:
//                         true, // Allow half-star ratings (e.g., 2.5)
//                     itemCount: 5, // Total number of stars (5 stars)
//                     itemSize: 50.0, // Size of each star icon
//                     unratedColor: Colors.grey.withOpacity(
//                         0.5), // Color for unrated stars (subtle gray)
//                     itemPadding: EdgeInsets.symmetric(
//                         horizontal: 4.0), // Padding between stars

//                     // Builder function to specify how each star looks
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber, // Color for rated stars (amber)
//                     ),

//                     // Callback function when rating is updated by user interaction
//                     onRatingUpdate: (rating) {
//                       setState(() {
//                         _rating = rating; // Update state with new rating value
//                       });
//                       print(
//                           rating); // Print the new rating to console for debugging
//                     },
//                   ),

//                   SizedBox(
//                       height:
//                           20), // Space between rating bar and rating display

//                   Text(
//                     'Your Rating:', // Label for displaying current rating
//                     style: TextStyle(fontSize: 24, color: Colors.black),
//                   ),
//                   SizedBox(
//                       height:
//                           10), // Space between label and actual rating display

//                   Text(
//                     _rating.toString(), // Display current rating as text
//                     style: TextStyle(
//                         fontSize: 32,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart'; // Import the Material design package for Flutter
// import 'package:share_plus/share_plus.dart'; // Import the Share Plus package for sharing content

// // SharePage widget that contains the UI for sharing content
// class SharePage extends StatelessWidget {
//   // Function to handle sharing content
//   void _onShare(BuildContext context) async {
//     // Define the text to share
//     final String text = "Check out this Cool Flutter app!";
//     // Define the subject for the share dialog (optional)
//     final String subject = "Flutter Share";

//     // Use the Share package to share the text and subject
//     await Share.share(text, subject: subject);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Share Button',
//           style: TextStyle(fontSize: 32),
//         ), // Title of the AppBar
//         backgroundColor: Colors.blue[200],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment:
//               MainAxisAlignment.center, // Center the column vertically
//           children: <Widget>[
//             // A visually appealing text widget
//             const Text(
//               'Tap the button 👇 below to share!', // Instruction text
//               style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold), // Style for the text
//             ),
//             const SizedBox(height: 20), // Space between the text and button
//             ElevatedButton(
//               onPressed: () =>
//                   _onShare(context), // Call _onShare when button is pressed
//               child: Text(
//                 'Share Now',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ), // Text displayed on the button
//               style: ElevatedButton.styleFrom(
//                 elevation: 6,
//                 foregroundColor: Colors.blueAccent, // Color of the button text
//                 padding: const EdgeInsets.symmetric(
//                     horizontal: 20,
//                     vertical: 15), // Padding around the button text
//                 textStyle:
//                     const TextStyle(fontSize: 18), // Style for button text size
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

// class MyLiquid extends StatefulWidget {
//   @override
//   _MyLiquidState createState() => _MyLiquidState();
// }

// class _MyLiquidState extends State<MyLiquid> {
//   // Key for the LiquidPullToRefresh widget
//   final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
//       GlobalKey<LiquidPullToRefreshState>();

//   // Sample data list
//   List<String> items = List.generate(20, (index) => "Item $index");

//   // Method to handle refresh logic
//   Future<void> _handleRefresh() async {
//     // Simulate network delay
//     await Future.delayed(Duration(seconds: 2));
//     // Update your data here (for example, fetch new data)
//     setState(() {
//       items.add(
//           "New Item ${items.length}"); // Adding a new item for demonstration
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Liquid Pull to Refresh Example'),
//       ),
//       body: LiquidPullToRefresh(
//         key: _refreshIndicatorKey,
//         onRefresh: _handleRefresh,
//         height: 100.0, // Height of the pull-to-refresh indicator
//         color: Colors.blue[100], // Color of the indicator
//         backgroundColor: Colors.white, // Background color of the indicator
//         showChildOpacityTransition: true, // Transition effect for child widgets
//         child: ListView.builder(
//           itemCount: items.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               title: Text(items[index]),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart'; // Import Flutter material design package
// import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart'; // Import the Liquid Pull to Refresh package

// class LiquidPull extends StatefulWidget {
//   @override
//   _LiquidPullState createState() =>
//       _LiquidPullState(); // Create state for LiquidPull
// }

// class _LiquidPullState extends State<LiquidPull> {
//   // Key for managing the Liquid Pull to Refresh widget
//   final GlobalKey<LiquidPullToRefreshState> _refreshIndicatorKey =
//       GlobalKey<LiquidPullToRefreshState>();

//   // Sample data list with titles and asset image paths
//   List<Map<String, String>> items = List.generate(20, (index) {
//     return {
//       "title": "Beautiful Place $index", // Title for each item
//       "image": "images/dev.jpeg", // Path to the asset image
//     };
//   });

//   // Method to handle refresh action
//   Future<void> _handleRefresh() async {
//     await Future.delayed(
//         Duration(seconds: 2)); // Simulate a network delay of 2 seconds
//     setState(() {
//       items.add({
//         "title":
//             "New Beautiful Place ${items.length}", // Add a new item with an updated title
//         "image": "images/dev.jpeg" // Use the same asset image for new items
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Liquid Pull to Refresh Example'), // Title of the app bar
//         centerTitle: true, // Center the title in the app bar
//       ),
//       body: LiquidPullToRefresh(
//         key:
//             _refreshIndicatorKey, // Assign the key to the LiquidPullToRefresh widget
//         onRefresh:
//             _handleRefresh, // Call _handleRefresh when pulled down to refresh
//         height: 100.0, // Height of the refresh indicator when pulled down
//         color: Colors.blue, // Color of the refresh indicator
//         backgroundColor:
//             Colors.white, // Background color of the refresh indicator
//         showChildOpacityTransition:
//             true, // Enable opacity transition for child widgets during refresh
//         child: ListView.builder(
//           itemCount: items.length, // Number of items in the list
//           itemBuilder: (context, index) {
//             return Card(
//               elevation: 4, // Shadow effect for the card
//               margin: EdgeInsets.all(8), // Margin around each card
//               shape: RoundedRectangleBorder(
//                   borderRadius:
//                       BorderRadius.circular(15)), // Rounded corners for cards
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(
//                     15), // Clip corners of child widgets to match card shape
//                 child: Column(
//                   children: [
//                     Image.asset(
//                       items[index][
//                           "image"]!, // Load asset image using path from items list
//                       fit: BoxFit
//                           .cover, // Cover entire area of image widget without distortion
//                       height: 200, // Height of the image widget
//                       width:
//                           double.infinity, // Width takes full available width
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(
//                           16.0), // Padding around text inside card
//                       child: Text(
//                         items[index]["title"]!, // Display title from items list
//                         style: TextStyle(
//                           fontSize: 20, // Font size for title text
//                           fontWeight: FontWeight.bold, // Make title text bold
//                         ),
//                         textAlign:
//                             TextAlign.center, // Center align text in card
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';

// class MyShimmer extends StatefulWidget {
//   @override
//   _MyShimmerState createState() => _MyShimmerState();
// }

// class _MyShimmerState extends State<MyShimmer> {
//   bool _isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     // Simulate a network call
//     Future.delayed(Duration(seconds: 3), () {
//       setState(() {
//         _isLoading = false; // Stop loading after 3 seconds
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Shimmer Effect')),
//       body: _isLoading ? _buildLoadingList() : _buildDataList(),
//     );
//   }

//   // Method to build the loading shimmer effect
//   Widget _buildLoadingList() {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Shimmer.fromColors(
//           baseColor: Colors.grey[300]!,
//           highlightColor: Colors.grey[100]!,
//           child: Container(
//             height: 100,
//             margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(12),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // Method to build the actual data list
//   Widget _buildDataList() {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Container(
//           height: 100,
//           margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
//           decoration: BoxDecoration(
//             color: Colors.blueAccent,
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Center(
//             child: Text(
//               'Item $index',
//               style: TextStyle(color: Colors.white, fontSize: 24),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MySemantics extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Semantics Widget Demo'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // A button with semantics for accessibility
//             Semantics(
//               label:
//                   'Increment counter', // Descriptive label for screen readers
//               button: true, // Indicates this widget is a button
//               child: FloatingActionButton(
//                 onPressed: () {
//                   // Increment action here
//                 },
//                 tooltip: 'Increment', // Tooltip for the button
//                 child: Icon(Icons.add),
//               ),
//             ),
//             SizedBox(height: 20),
//             // A text field with semantics for accessibility
//             Semantics(
//               label: 'Enter your name', // Descriptive label for the text field
//               hint: 'Type your name here', // Hint for the input field
//               child: TextField(
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Name',
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             // A switch with semantics for accessibility
//             Semantics(
//               label: 'Enable notifications', // Descriptive label for the switch
//               enabled: true, // Indicates if the switch is enabled
//               child: Switch(
//                 value: true, // Current state of the switch
//                 onChanged: (bool value) {
//                   // Toggle action here
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MySem extends StatefulWidget {
//   @override
//   _MySemState createState() => _MySemState();
// }

// class _MySemState extends State<MySem> {
//   double _sliderValue = 0.5; // Slider value
//   bool _notificationsEnabled = false; // Checkbox state

//   void _incrementCounter() {
//     // Increment action logic here
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Counter incremented!')),
//     );
//   }

//   void _toggleNotifications(bool? value) {
//     setState(() {
//       _notificationsEnabled = value ?? false; // Update checkbox state
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Enhanced Semantics Widget Demo'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Button with semantics for accessibility
//               Semantics(
//                 label:
//                     'Increment counter', // Descriptive label for screen readers
//                 button: true, // Indicates this widget is a button
//                 child: ElevatedButton(
//                   onPressed: _incrementCounter,
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
//                     textStyle: TextStyle(fontSize: 20),
//                     foregroundColor: Colors.blueAccent, // Button color
//                   ),
//                   child: Text('Increment Counter'),
//                 ),
//               ),
//               SizedBox(height: 20),

//               // Slider with semantics for accessibility
//               Semantics(
//                 label: 'Adjust volume', // Descriptive label for the slider
//                 value: _sliderValue.toString(), // Current value of the slider
//                 child: Column(
//                   children: [
//                     Text('Volume Level', style: TextStyle(fontSize: 18)),
//                     Slider(
//                       value: _sliderValue,
//                       min: 0.0,
//                       max: 1.0,
//                       divisions: 10,
//                       label: (_sliderValue * 100).round().toString(),
//                       activeColor:
//                           Colors.blueAccent, // Slider color when active
//                       inactiveColor: Colors.grey, // Slider color when inactive
//                       onChanged: (double value) {
//                         setState(() {
//                           _sliderValue = value;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20),

//               // Checkbox with semantics for accessibility
//               Semantics(
//                 label:
//                     'Enable notifications', // Descriptive label for the checkbox
//                 checked: _notificationsEnabled, // Current state of the checkbox
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Checkbox(
//                       value: _notificationsEnabled,
//                       onChanged: _toggleNotifications,
//                     ),
//                     Text('Enable Notifications',
//                         style: TextStyle(fontSize: 18)),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class AnimatedAlignExample extends StatefulWidget {
//   @override
//   _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
// }

// class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
//   AlignmentGeometry _alignment = Alignment.topLeft;

//   void _toggleAlignment() {
//     setState(() {
//       _alignment = _alignment == Alignment.topLeft
//           ? Alignment.center
//           : Alignment.topLeft;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animated Align"),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: _toggleAlignment,
//           child: AnimatedAlign(
//             alignment: _alignment,
//             duration: Duration(seconds: 1),
//             curve: Curves.fastOutSlowIn,
//             child: Container(
//               width: 100,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.teal,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 10.0,
//                     spreadRadius: 2.0,
//                   ),
//                 ],
//               ),
//               child: Center(
//                 child: Text(
//                   'Tap Me!',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class AnimatedAlignExample extends StatefulWidget {
//   @override
//   _AnimatedAlignExampleState createState() => _AnimatedAlignExampleState();
// }

// class _AnimatedAlignExampleState extends State<AnimatedAlignExample> {
//   AlignmentGeometry _alignment = Alignment.topLeft;

//   void _toggleAlignment() {
//     setState(() {
//       _alignment = _alignment == Alignment.topLeft
//           ? Alignment.center
//           : Alignment.bottomRight;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Animated Align with Image"),
//       ),
//       body: Center(
//         child: GestureDetector(
//           onTap: _toggleAlignment,
//           child: AnimatedAlign(
//             alignment: _alignment,
//             duration: Duration(seconds: 1),
//             curve: Curves.fastOutSlowIn,
//             child: Container(
//               width: 100,
//               height: 100,
//               decoration: BoxDecoration(
//                 color: Colors.teal,
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 10.0,
//                     spreadRadius: 2.0,
//                   ),
//                 ],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(
//                   'images/developer.jpg', // Replace with your image path
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// // Define an enum for the segmented button options
// enum Options { pizza, burger, momo, noodles }

// class Choices extends StatefulWidget {
//   const Choices({super.key});

//   @override
//   _ChoicesState createState() => _ChoicesState();
// }

// class _ChoicesState extends State<Choices> {
//   // Track the selected option
//   Options? selectedOption;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Segmented Button'),
//         backgroundColor: Colors.green[200], // Teal color for the AppBar
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'Choose Your Fav Food:',
//                 style: TextStyle(
//                     fontSize: 28, // Increased font size for the title
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black), // Darker teal for text
//               ),
//               const SizedBox(height: 20),
//               // Create the SegmentedButton with creative options
//               SegmentedButton<Options>(
//                 segments: const <ButtonSegment<Options>>[
//                   ButtonSegment<Options>(
//                     value: Options.pizza,
//                     label: Text('🍕 Pizza'),
//                   ),
//                   ButtonSegment<Options>(
//                     value: Options.burger,
//                     label: Text('🍔 Burger'),
//                   ),
//                   ButtonSegment<Options>(
//                     value: Options.momo,
//                     label: Text('🥟 Momo'),
//                   ),
//                   ButtonSegment<Options>(
//                     value: Options.noodles,
//                     label: Text('🍟 French Fries'),
//                   ),
//                 ],
//                 selected: selectedOption != null ? {selectedOption!} : {},
//                 onSelectionChanged: (Set<Options> newSelection) {
//                   setState(() {
//                     // Allow only one selection
//                     selectedOption =
//                         newSelection.isNotEmpty ? newSelection.first : null;
//                   });
//                 },
//                 multiSelectionEnabled: false, // Only allow single selection
//                 emptySelectionAllowed: true,
//                 style: ButtonStyle(
//                   backgroundColor: WidgetStateProperty.all(
//                       Colors.teal[100]), // Light teal for button background
//                   foregroundColor: WidgetStateProperty.all(
//                       Colors.black), // Black text color for better contrast
//                   padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
//                       vertical: 20)), // Increased padding for larger buttons
//                   textStyle: WidgetStateProperty.all(
//                       const TextStyle(fontSize: 20)), // Larger text for buttons
//                 ),
//                 showSelectedIcon: true,
//                 selectedIcon: const Icon(Icons.check,
//                     color: Colors.white), // White check icon for selected state
//               ),
//               const SizedBox(height: 20),
//               // Display the selected option as text with improved styling
//               const Text(
//                 'Selected Food:',
//                 style: TextStyle(
//                     fontSize: 22,
//                     fontWeight: FontWeight
//                         .bold), // Increased font size for selected food label
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 selectedOption == null
//                     ? 'None'
//                     : _formatOptionName(
//                         selectedOption!), // Use helper function to format option name
//                 style: TextStyle(
//                     fontSize: 18,
//                     color: Colors.red[600],
//                     fontWeight:
//                         FontWeight.bold), // Darker teal for selected text
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Helper function to format option names nicely
//   String _formatOptionName(Options option) {
//     switch (option) {
//       case Options.pizza:
//         return 'Pizza';
//       case Options.burger:
//         return 'Burger';
//       case Options.momo:
//         return 'Momo';
//       case Options.noodles:
//         return 'Noodles';
//     }
//   }
// }

// import 'package:flutter/material.dart';

// class MyCarouselView extends StatelessWidget {
//   // List of asset image paths
//   final List<String> imageAssets = [
//     "images/messi.jpg",
//     "images/ronaldo.jpg",
//     "images/neymar.jpg",
//     "images/developer.jpg",
//   ];

//   MyCarouselView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Carousel View '),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             // Wrap CarouselView in a SizedBox to provide height
//             SizedBox(
//               height: 300, // Set a fixed height for the carousel
//               child: CarouselView.(
//                 itemCount: imageAssets.length,
//                 itemBuilder: (context, index) {
//                   return Container(
//                     margin: const EdgeInsets.all(10), // Margin around each item
//                     decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.circular(15), // Rounded corners
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 10.0,
//                           offset: Offset(0, 5), // Shadow position
//                         ),
//                       ],
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(
//                           15), // Ensure image corners are rounded
//                       child: Image.asset(
//                         imageAssets[index],
//                         fit: BoxFit.cover, // Cover the entire container
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             const SizedBox(
//                 height: 20), // Space between carousel and other content
//             const Text(
//               'Swipe to see more images!',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart'; // Import the carousel_slider package

// class MyCarouselView extends StatelessWidget {
//   // List of asset image paths
//   final List<String> imageAssets = [
//     "images/messi.jpg",
//   ];

//   MyCarouselView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Carousel View'),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             // Wrap CarouselSlider in a SizedBox to provide height
//             SizedBox(
//               height: 300, // Set a fixed height for the carousel
//               child: CarouselSlider.builder(
//                 itemCount: imageAssets.length,
//                 itemBuilder: (context, index, realIndex) {
//                   return Container(
//                     margin: const EdgeInsets.all(10), // Margin around each item
//                     decoration: BoxDecoration(
//                       borderRadius:
//                           BorderRadius.circular(15), // Rounded corners
//                       boxShadow: const [
//                         BoxShadow(
//                           color: Colors.black26,
//                           blurRadius: 10.0,
//                           offset: Offset(0, 5), // Shadow position
//                         ),
//                       ],
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(
//                           15), // Ensure image corners are rounded
//                       child: Image.asset(
//                         imageAssets[index],
//                         fit: BoxFit.cover, // Cover the entire container
//                       ),
//                     ),
//                   );
//                 },
//                 options: CarouselOptions(
//                   autoPlay: true, // Enable auto-play
//                   enlargeCenterPage: true, // Enlarge the center item
//                   aspectRatio: 2.0, // Aspect ratio of the carousel
//                   onPageChanged: (index, reason) {
//                     print(
//                         'Current index: $index'); // Print current index on change
//                   },
//                 ),
//               ),
//             ),
//             const SizedBox(
//                 height: 20), // Space between carousel and other content
//             const Text(
//               'Swipe to see more images!',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MyCarousel extends StatelessWidget {
//   const MyCarousel({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Carousel')),
//       body: CarouselView(
//         itemExtent: 200.0, // Set the height of the images
//         children: [
//           Image.asset('images/messi.jpg', fit: BoxFit.cover),
//           Image.asset('images/ronaldo.jpg', fit: BoxFit.cover),
//           Image.asset('images/neymar.jpg', fit: BoxFit.cover),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';

// class MyCarousel extends StatelessWidget {
//   const MyCarousel({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Image Carousel')),
//       body: Center(
//         child: CarouselSlider(
//           options: CarouselOptions(
//             height: 400.0,
//             autoPlay: true,
//             autoPlayInterval: const Duration(seconds: 3),
//             enlargeCenterPage: true,
//             viewportFraction: 0.85,
//             enableInfiniteScroll: true,
//           ),
//           items: [
//             'images/messi.jpg',
//             'images/ronaldo.jpg',
//             'images/neymar.jpg',
//             'images/developer.jpg',
//           ].map((imagePath) {
//             return Container(
//               margin: const EdgeInsets.symmetric(horizontal: 5.0),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black26,
//                     blurRadius: 10.0,
//                     offset: const Offset(0, 5), // Shadow position
//                   ),
//                 ],
//               ),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(15),
//                 child: Image.asset(imagePath, fit: BoxFit.cover),
//               ),
//             );
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
