import 'package:flutter/material.dart';
import 'sign_in.dart';

class Successfully extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle, color: Colors.green, size: 80),
            SizedBox(height: 20),
            Text("Password Reset Successfully!"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (_) => SignIn()),
                  (route) => false,
                );
              },
              child: Text("Back to Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
