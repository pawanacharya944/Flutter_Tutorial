import 'package:flutter/material.dart';

class MyVotingApp extends StatefulWidget {
  const MyVotingApp({super.key});

  @override
  State<MyVotingApp> createState() => _MyVotingAppState();
}

class _MyVotingAppState extends State<MyVotingApp> {
  int pepperoniVotes = 0;
  int veggieVotes = 0;
  int hawaiianVotes = 0;

  // function to handle voting

  void vote(String option) {
    setState(() {
      if (option == 'Pepperoni') {
        pepperoniVotes++;
      } else if (option == 'Veggie') {
        veggieVotes++;
      } else if (option == 'Hawaiian') {
        hawaiianVotes++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // background image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/pizza.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Container(
          //   color: Colors
          //       .black26, // semi-transparent with a semi-transparent overlay for better readability
          // ),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100),
                Center(
                  child: Text(
                    'Choose Your Favorite Topping: ',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 26),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20),
                buildVoteButton('Pepperoni', pepperoniVotes, Colors.red[400]!),
                const SizedBox(height: 20),
                buildVoteButton('Veggie', veggieVotes, Colors.green[400]!),
                const SizedBox(height: 20),
                buildVoteButton('Hawaiian', hawaiianVotes, Colors.blue[400]!),
                const SizedBox(height: 40),
                Text(
                  'Current Results: ',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                buildResultText('Pepperoni has $pepperoniVotes votes'),
                buildResultText('Veggie has $veggieVotes votes'),
                buildResultText('Hawaiian has $hawaiianVotes votes'),
              ],
            ),
          )
        ],
      ),
    );
  }

  ElevatedButton buildVoteButton(String topping, int votes, Color buttonColor) {
    return ElevatedButton(
        onPressed: () => vote(topping),
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10,
          shadowColor: Colors.black54,
        ),
        child: Text(
          '$topping ($votes votes)',
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ));
  }

  Text buildResultText(String result) {
    return Text(
      result,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.yellow,
      ),
    );
  }
}
