import 'package:flutter/material.dart';
import 'login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _logo(),
            _header(),
            _inputFields(context),
            _buttons(context),
          ],
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
          "Create Account",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget _inputFields(BuildContext context) {
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
            hintText: "Email",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(18),
              borderSide: BorderSide.none,
            ),
            fillColor: Colors.black.withOpacity(0.1),
            filled: true,
            prefixIcon: const Icon(Icons.email, color: Colors.black),
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
        TextField(
          decoration: InputDecoration(
            hintText: "Confirm Password",
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
      ],
    );
  }

  Widget _buttons(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            // Add sign-up logic here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            padding: const EdgeInsets.symmetric(vertical: 16),
            backgroundColor: Colors.black,
          ),
          child: const Text(
            "Create Account",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        const SizedBox(height: 10),
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            "Already have an account? Log in",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}