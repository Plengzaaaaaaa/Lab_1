import 'package:flutter/material.dart';
import 'secondpage.dart'; // Import the second page

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  double _currentSliderValue = 20;
  double _currentSliderValue2 = 20;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        // const ค่าคงที่
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            // Add SingleChildScrollView here
            child: Column(
              children: [
                CircleAvatar(
                  radius: 80,
                  child: Text("Your Logo"),
                ),
                const SizedBox(
                    height:
                        16), // เว้นระยะระหว่างขอบกับข้อความ สามารถใช้ padding ได้ด้วย
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 20,
                        shadows: [
                          Shadow(color: Colors.black, offset: Offset(0, -5))
                        ],
                        color: Colors.transparent,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                        decorationThickness: 4,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                    height:
                        16), // เว้นระยะระหว่างขอบกับข้อความ สามารถใช้ padding ได้ด้วย
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 213, 247, 227),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'name',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 213, 247, 227),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'username',
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(255, 213, 247, 227),
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    prefixIcon: Icon(Icons.person),
                    labelText: 'password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: const Text("Weight"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth / 3),
                      child: Slider(
                        value: _currentSliderValue,
                        max: 100,
                        divisions: 20,
                        label: _currentSliderValue.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: const Text("Height"),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth / 3),
                      child: Slider(
                        value: _currentSliderValue2,
                        max: 100,
                        divisions: 20,
                        label: _currentSliderValue2.round().toString(),
                        onChanged: (double value) {
                          setState(() {
                            _currentSliderValue2 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Text("NextPage"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: FirstPage(),
    ));
