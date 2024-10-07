import 'package:flutter/material.dart';

class My_Stepper extends StatefulWidget {
  const My_Stepper({super.key});

  @override
  State<My_Stepper> createState() => _My_StepperState();
}

class _My_StepperState extends State<My_Stepper> {
  // variable to track the current step index

  int _currentStep = 0;

  // list of steps in the stepper

  List<Step> get steps => [
        const Step(
          title: Text(
            "Welcome", // title of the first step
            style: TextStyle(fontSize: 18),
          ),
          content: Text(
            "Let's get started on your Fitness journey!", // content for the first step
          ),
          isActive: true, // mark this step as active
        ),
        Step(
          title: const Text(
            "Set Your Goal",
            style: TextStyle(fontSize: 18),
          ),
          content: const Text(
            "What is your primary fitness goal?",
          ),
          isActive: _currentStep >= 1, // active if current step is 1 or more
        ),
        Step(
          title: const Text(
            "Workout Frequency",
            style: TextStyle(fontSize: 18),
          ),
          content: const Text(
            "How often do you want to workout?",
          ),
          isActive: _currentStep >= 2, // active if current step is 2 or more
        ),
        Step(
          title: const Text(
            "Diet Preferences",
            style: TextStyle(fontSize: 18),
          ),
          content: const Text(
            "What is your primary fitness goal?",
          ),
          isActive: _currentStep >= 3, // active if current step is 3 or more
        ),
        Step(
          title: const Text(
            "Ready to Start!",
            style: TextStyle(fontSize: 18),
          ),
          content: const Text(
            "You're all set to begin your Fitness journey! let's go!😉",
          ),
          isActive: _currentStep >= 4, // active if current step is 4 or more
        ),
      ];

  // function to move to the next step in the stepper

  void _nextStep() {
    if (_currentStep < steps.length - 1) {
      // check if not at last step
      setState(
          () => _currentStep++); // increment current step index and rebuild ui
    }
  }

  // function to move to the previous step in the stepper
  void _prevStep() {
    if (_currentStep > 0) {
      // check if not at first step
      setState(
          () => _currentStep--); // decrement current step index and rebuild ui
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Stepper"),
        backgroundColor: Colors.blue[200],
      ),
      body: Stepper(
          type:
              StepperType.vertical, // set vertical orientation for the stepper
          currentStep: _currentStep, // current active step index
          onStepContinue:
              _nextStep, // function called when continuing to next step
          onStepCancel:
              _prevStep, // function called when canceling back to previous step

          steps: steps), // list of steps defined above
    );
  }
}
