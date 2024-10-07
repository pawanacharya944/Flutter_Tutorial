import 'package:flutter/material.dart';

class Future_BuilderWidget extends StatelessWidget {
  const Future_BuilderWidget({super.key});

  // simulating a network call with a delay

  Future<String> fetchData() async {
    await Future.delayed(
        const Duration(seconds: 2)); // simulate a 2 second network delay

    return "Data Fetched Sucessfully!"; // return a success message after the delay
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.green[200]!,
              Colors.blue[200]!,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: FutureBuilder(
            future: fetchData(),
            initialData:
                'Fetching Data...', // initial message displayed while waiting for data
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              // check the connection state of the future

              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return _buildLoadingIndicator(); // show loading indicator while waiting for data

                case ConnectionState.done:
                  if (snapshot.hasError) {
                    return _buildErrorWidget(snapshot
                        .error); // show error message if there's an error
                  } else if (snapshot.hasData) {
                    return _buildSuccessWidget(
                        snapshot.data); // show fetched data if successful
                  }
                  break;
                default:
                  return _buildErrorWidget(
                      "Unknown State"); // fallback for unknown state
              }
              return Container(); // fallback container in case no condition is met
            },
          ),
        ),
      ),
    );
  }

  // widget to display while loading
  Widget _buildLoadingIndicator() {
    return const Column(
      mainAxisAlignment:
          MainAxisAlignment.center, // center the loading indicator vertically
      children: [
        CircularProgressIndicator(), // circular loading spinner to indiecate progress

        SizedBox(
          height: 20,
        ),
        Text(
          "Loading...",
          style: TextStyle(
              // loading text message
              fontSize: 22,
              color: Colors.grey),
        ),
      ],
    );
  }

  // widget to display when data is successfully fetched

  Widget _buildSuccessWidget(String? data) {
    return Card(
      elevation: 4, // shadow effect for the card
      margin: const EdgeInsets.all(16.0), // margin around the card
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize
              .min, // minimize the height of the column based on content size

          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 50,
            ), // success icon

            const SizedBox(
              height: 10,
            ), // space between icon and text

            const Text(
              "Result:",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),

            Text(
              data ?? '',
              style: const TextStyle(
                  fontSize: 18 // display fetched data or empty string if null
                  ),
            ),
          ],
        ),
      ),
    );
  }

  // widget to display when an error occurs during fetching data

  Widget _buildErrorWidget(Object? error) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0), //padding inside the card
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // minimize height based on content size

          children: [
            const Icon(
              Icons.error,
              color: Colors.red,
              size: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Error Occurred:",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              error.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
