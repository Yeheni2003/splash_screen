// Importing required Flutter packages
import 'package:flutter/material.dart';

// Main function to run the app
void main() {
  runApp(MommyCareApp());
}

// Root widget of the app
class MommyCareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// Splash screen widget
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color of the screen
      body: Center(
        child: Container(
          width: 412, // Simulates a standard mobile screen width
          height: 917, // Simulates a standard mobile screen height
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
          child: Stack(
            children: [
              // "MOMMYcare+" text
              Positioned(
                left: 97,
                top: 95,
                child: Text(
                  'MOMMYcare+',
                  style: TextStyle(
                    color: Color(0xFF7260C6), // Purple color
                    fontSize: 36,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              // Image of the mother and baby
              Positioned(
                left: 60,
                top: 189,
                child: Container(
                  width: 290,
                  height: 302,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/mom_and_baby.png'), // Replace with your image path
                      fit: BoxFit.fill,
                    ),
                    border: Border.all(
                      width: 2,
                      color: Color(0xFF7260C6),
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),

              // "Every Mom Deserves to Feel Her Best" text
              Positioned(
                left: 0,
                top: 531,
                child: SizedBox(
                  width: 430,
                  child: Text(
                    'Every Mom Deserves to \nFeel Her Best',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF180770),
                      fontSize: 32,
                      fontFamily: 'Kalam',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),

              // "Embrace a new beginning" button
              Positioned(
                left: 60,
                top: 698,
                child: GestureDetector(
                  onTap: () {
                    // Add navigation or functionality here
                    print('Button Pressed');
                  },
                  child: Container(
                    width: 300,
                    height: 76,
                    decoration: BoxDecoration(
                      color: Color(0xD87260C6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Embrace a new beginning',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
