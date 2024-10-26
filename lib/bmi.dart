import 'package:flutter/material.dart';

class MyBMI_Calculator extends StatefulWidget {
  const MyBMI_Calculator({super.key});

  @override
  State<MyBMI_Calculator> createState() => _MyBMI_CalculatorState();
}

class _MyBMI_CalculatorState extends State<MyBMI_Calculator> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  double _bmi = 0;
  String _resultText = '';

  // function to calculate BMI

  void _calculateBMI() {
    double height = double.tryParse(_heightController.text) ?? 0;
    double weight = double.tryParse(_weightController.text) ?? 0;

    if (height > 0 && weight > 0) {
      setState(() {
        _bmi = weight / ((height / 100) * (height / 100)); // BMI formula
        _resultText = _getResultText(_bmi);
      });
    } else {
      setState(() {
        _resultText = 'Please Enter Valid Values!';
      });
    }
  }

  // function to determine the BMI category
  String _getResultText(double bmi) {
    if (bmi < 18.5) {
      return 'Under Weight';
    } else if (bmi >= 18.5 && bmi < 24.9) {
      return 'Normal Weight';
    } else if (bmi >= 25 && bmi < 29.9) {
      return 'Over Weight';
    } else {
      return 'Obese';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Colors.blue[300]!,
                Colors.green[400]!,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppBar(
                  title: const Text(
                    'BMI Calculator',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  centerTitle: true,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                TextField(
                  controller: _heightController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                    labelText: 'Height (cm)',
                    labelStyle:
                        const TextStyle(fontSize: 20, color: Colors.blueGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: const Icon(Icons.height, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  style: const TextStyle(fontSize: 22),
                  decoration: InputDecoration(
                    labelText: 'Weight(kg)',
                    labelStyle:
                        const TextStyle(fontSize: 20, color: Colors.blueGrey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon:
                        const Icon(Icons.fitness_center, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.8),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 16),
                  ),
                ),
                const SizedBox(height: 16),

                // calculate button
                ElevatedButton(
                  onPressed: _calculateBMI,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                  ),
                  child: const Text(
                    'Calculate BMI',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 30),

                // displaying the result

                const Text(
                  'Your BMI is: ',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),

                const SizedBox(height: 8),
                Text(
                  _bmi.toStringAsFixed(2),
                  style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),

                const SizedBox(height: 0),
                Text(
                  _resultText,
                  style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
