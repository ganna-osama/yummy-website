import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            cr
            children: [
              Image.asset("assets/images/logo.png", width: 180, height: 180),

              SizedBox(height: 20),

              Text(
                "MOVIES",
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
