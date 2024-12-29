import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class RealisticSpeedometerPage extends StatefulWidget {
  const RealisticSpeedometerPage({super.key});

  @override
  _RealisticSpeedometerPageState createState() =>
      _RealisticSpeedometerPageState();
}

class _RealisticSpeedometerPageState extends State<RealisticSpeedometerPage> {
  final ValueNotifier<double> _speedNotifier = ValueNotifier(0.0);
  late final Ticker _ticker;
  bool _isAccelerating = false;

  @override
  void initState() {
    super.initState();
    _ticker = Ticker(_updateSpeed);
    _ticker.start();
  }

  void _updateSpeed(Duration elapsed) {
    setState(() {
      if (_isAccelerating) {
        // Gradual acceleration
        _speedNotifier.value =
            (_speedNotifier.value + elapsed.inMilliseconds * 0.00003)
                .clamp(0.0, 240.0);
      } else {
        // Gradual deceleration
        _speedNotifier.value =
            (_speedNotifier.value - elapsed.inMilliseconds * 0.000001)
                .clamp(0.0, 240.0);
      }
    });
  }

  void _startAcceleration() {
    setState(() {
      _isAccelerating = true;
    });
  }

  void _stopAcceleration() {
    setState(() {
      _isAccelerating = false;
    });
  }

  void _applyBrake() {
    setState(() {
      _isAccelerating = false;
      // Smooth braking
      _speedNotifier.value = (_speedNotifier.value - 20).clamp(0.0, 240.0);
    });
  }

  @override
  void dispose() {
    _ticker.dispose();
    _speedNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'S P E E D O M E T E R',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.black, Colors.grey[900]!],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Speedometer
              ValueListenableBuilder<double>(
                valueListenable: _speedNotifier,
                builder: (context, speed, child) {
                  return SfRadialGauge(
                    axes: <RadialAxis>[
                      RadialAxis(
                        startAngle: 140,
                        endAngle: 40,
                        minimum: 0,
                        maximum: 240,
                        radiusFactor: 0.9,
                        majorTickStyle: const MajorTickStyle(
                          length: 12,
                          thickness: 2,
                          color: Colors.white,
                        ),
                        minorTicksPerInterval: 4,
                        minorTickStyle: const MinorTickStyle(
                          length: 6,
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        axisLineStyle: const AxisLineStyle(
                          thickness: 15,
                          gradient: SweepGradient(
                            colors: [
                              Colors.green,
                              Colors.yellow,
                              Colors.orange,
                              Colors.red,
                            ],
                            stops: [0.25, 0.5, 0.75, 1.0],
                          ),
                        ),
                        axisLabelStyle: const GaugeTextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        pointers: <GaugePointer>[
                          NeedlePointer(
                            value: speed,
                            enableAnimation: true,
                            animationType: AnimationType.easeOutBack,
                            needleColor: Colors.white,
                            needleStartWidth: 1,
                            needleEndWidth: 5,
                            needleLength: 0.75,
                            animationDuration: 2000,
                            gradient: const LinearGradient(
                                colors: [Colors.white, Colors.red]),
                            knobStyle: KnobStyle(
                              color: Colors.purple,
                              borderColor: Colors.blue.withAlpha(100),
                              borderWidth: 1,
                            ),
                          ),
                        ],
                        ranges: <GaugeRange>[
                          GaugeRange(
                            startValue: 0,
                            endValue: 30,
                            color: Colors.pink,
                            startWidth: 15,
                            endWidth: 15,
                          ),
                          GaugeRange(
                            startValue: 30,
                            endValue: 80,
                            color: Colors.green,
                            startWidth: 15,
                            endWidth: 15,
                          ),
                          GaugeRange(
                            startValue: 80,
                            endValue: 160,
                            color: Colors.amber,
                            startWidth: 15,
                            endWidth: 15,
                          ),
                          GaugeRange(
                            startValue: 160,
                            endValue: 240,
                            color: Colors.red,
                            startWidth: 15,
                            endWidth: 15,
                          ),
                        ],
                        annotations: <GaugeAnnotation>[
                          GaugeAnnotation(
                            widget: Column(
                              children: [
                                Text(
                                  speed.toStringAsFixed(0),
                                  style: const TextStyle(
                                    fontSize: 50,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.teal,
                                    shadows: [
                                      Shadow(
                                        color: Colors.white,
                                        blurRadius: 20,
                                      ),
                                    ],
                                  ),
                                ),
                                const Text(
                                  'km/h',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            angle: 90,
                            positionFactor: 0.75,
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildDashboardStat('RPM', '7000', Colors.tealAccent),
                      _buildDashboardStat('Fuel', '65%', Colors.orangeAccent),
                      _buildDashboardStat('Temp', '92°C', Colors.redAccent),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildDashboardStat(
                          'Battery', '12.8V', Colors.pinkAccent),
                      _buildDashboardStat('Gear', 'D', Colors.white),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 50),

              // Controls
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTapDown: (_) => _startAcceleration(),
                    onTapUp: (_) => _stopAcceleration(),
                    child: ElevatedButton(
                      onPressed:
                          null, // Keeps the button inactive since GestureDetector manages taps
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            Colors.blue, // Ensure button color is visible
                        disabledBackgroundColor: Colors.white,
                        textStyle: const TextStyle(color: Colors.black),
                        // Keep consistent style for disabled state
                      ),
                      child: const Text(
                        "Accelerate",
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: _applyBrake,
                    child: const Text(
                      "Brake",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildDashboardStat(String title, String value, Color color) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white.withOpacity(0.7),
        ),
      ),
      const SizedBox(height: 5),
      Text(
        value,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: color,
          shadows: [
            Shadow(
              color: color,
              blurRadius: 10,
            ),
          ],
        ),
      ),
    ],
  );
}
