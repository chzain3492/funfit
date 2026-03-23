import 'package:flutter/material.dart';
import 'sign_in.dart';

class Onboard extends StatelessWidget {
  const Onboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Are you Ready?"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => SignIn()),
                );
              },
              child: Text("I am Ready"),
            ),
          ],
        ),
      ),
    );
  }
}
