import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class My_RatingBar extends StatefulWidget {
  const My_RatingBar({super.key});

  @override
  State<My_RatingBar> createState() => _My_RatingBarState();
}

class _My_RatingBarState extends State<My_RatingBar> {
  double _rating = 3.5; // initial rating set to 3.5
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200]!, Colors.green[200]!],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Card(
            elevation: 10, // shadow effect for the card
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(20), // rounded corners for the card
            ),
            color: Colors.white.withOpacity(
                0.9), // semi-transparent white background for the card
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize:
                    MainAxisSize.min, // minimize space taken by the column
                children: <Widget>[
                  Text(
                    'Rate Us', // title text for rating prompt
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20, // space between title and rating bar
                  ),

                  // Rating bar Widget
                  RatingBar.builder(
                    initialRating:
                        _rating, // set initial rating from state variable
                    minRating: 1, // minimum rating value (1 star)
                    direction: Axis.horizontal, // arrange stars horizontally
                    allowHalfRating:
                        true, // allow half star rating like .. 2.5, 3.5
                    itemCount: 5, // total number of stars (5 stars)
                    itemSize: 50.0, // size of each star icon
                    unratedColor: Colors.grey.withOpacity(
                        0.5), // color for unrated stars (subtle grey)
                    itemPadding: EdgeInsets.symmetric(
                        horizontal: 4), // padding between stars

                    // Builder function to specify how each star looks
                    itemBuilder: (context, index) => Icon(
                      Icons.star,
                      color: Colors.amber, // color for rated stars
                    ),

                    // Callback function when rating is updated by user interaction

                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating; // update state with new rating value
                      });

                      print(
                          rating); // print the new rating to console for debugging
                    },
                  ),

                  SizedBox(
                    height: 20, // space between rating bar and rating display
                  ),

                  Text(
                    'Your Rating:', // label for displaying current rating
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),

                  SizedBox(
                    height: 10, // space between label and actual rating display
                  ),

                  Text(
                    _rating.toString(), // Display current rating as text
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              ),
            ), // padding inside the card
          ),
        ),
      ),
    );
  }
}
