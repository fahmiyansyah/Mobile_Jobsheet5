import 'package:belajar_widget/data/views_data.dart';
import 'package:flutter/material.dart';

class Temperature extends StatefulWidget {
  const Temperature({super.key});

  @override
  _TemperatureState createState() => _TemperatureState();
}

class _TemperatureState extends State<Temperature> {
  TextEditingController temperatureController = TextEditingController();
  double kelvin = 0.0;
  double reamur = 0.0;

  void convertTemperature() {
    double celsius = double.tryParse(temperatureController.text) ?? 0.0;
    setState(() {
      kelvin = celsius + 273.15;
      reamur = celsius * 0.8;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Konverter Suhu"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: temperatureController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter the temperature in Celsius',
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200], // Background color
              borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
            ),
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.thermostat, // Add an icon for visual representation
                      size: 48.0,
                      color: Colors.blue,
                    ),
                    Text(
                      "Suhu dalam Kelvin",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "$kelvin K",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.thermostat,
                      size: 48.0,
                      color: Colors.red,
                    ),
                    Text(
                      "Suhu dalam Réaumur",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "$reamur °Re",
                      style: TextStyle(fontSize: 24),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: convertTemperature,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Convert',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    temperatureController.dispose();
    super.dispose();
  }
}
