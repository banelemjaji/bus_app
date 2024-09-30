import 'package:flutter/material.dart';
import 'signup.dart'; // Import the SignUpPage

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _logo(),
              _header(),
              _inputField(),
              _buttons(context), // Pass the context here
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return Column(
      children: [
        // Replace with your logo image
        Image.asset(
          'assets/images/logo.jpg',
          height: 150,
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _header() {
    return const Column(
      children: [
        Text(
          "Welcome Back",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _inputField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Username",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.person, color: Colors.black),
          ),
        ),
        const SizedBox(height: 10),
        TextField(
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.lock, color: Colors.black),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 10),
      ],
    );
  }

  Widget _buttons(BuildContext context) { // Accept context as a parameter
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            // Add login logic here
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.black,
          ),
          child: const Text(
            "Login",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignUpPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(color: Colors.black),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.white,
          ),
          child: const Text(
            "Create New Account",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
      ],
    );
  }
}